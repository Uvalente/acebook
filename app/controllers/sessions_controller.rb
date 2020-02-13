# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :require_login
  def new; end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user&.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user, notice: "Welcome #{@user.email}!"
    else
      flash.now.alert = 'Incorrect email or password'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to welcome_index_path, notice: "Logged Out!"
  end
end

# frozen_string_literal: true

class PostsController < ApplicationController
  skip_before_action  :authenticated_user
  def new; end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_back(fallback_location: home_path)
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def show; end

  def index
    @posts = Post.order(created_at: :desc)
  end

  
  def destroy
    @post = Post.find(params[:id])
    if @post.user_id == session[:user_id]
      @post.destroy
      redirect_to posts_path
    else
      flash.now.alert = 'Apologies, this is not your post to delete!'
      @posts = Post.order(created_at: :desc)
      render 'posts/index'
    end
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end

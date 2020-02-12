# frozen_string_literal: true

class PostsController < ApplicationController
  def new
    # @post = Post.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_path(@user)
  end
 
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.order(created_at: :desc)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end 

  private

  def post_params
    params.require(:post).permit(:message)
  end
  
end

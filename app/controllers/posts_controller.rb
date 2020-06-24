class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  #include SessionsHelper

  def index
    @posts = Post.where(status:0)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params.merge(status:0))
    if @post.save
      flash[:success] = 'タスクが投稿されました'
      redirect_to posts_path
    else
      flash[:danger] = '内容を入れてください！'
      render 'posts/new'
    end
    logger.debug @post.errors.inspect

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash[:success] = "内容を変更しました"
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.update(status:1)
    flash[:success]="タスクを削除しました"
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end

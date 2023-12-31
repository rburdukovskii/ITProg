class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build post_params
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find_by id: params[:id]
  end

  def update
    @post = Post.find_by id: params[:id]
    if @post.update post_params
      redirect_to posts_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find_by id: params[:id]
    @post.destroy
    redirect_to posts_path
  end

  def show
    @post = Post.find_by id: params[:id]
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
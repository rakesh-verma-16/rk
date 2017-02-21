class PostsController < ApplicationController

  def new
  end
  def create
    @post = Post.new(create_params)
    if @post.save
      redirect to user_path, notice: 'Post successfully created.'
    else
      render new
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def create_params
    params.require(:posts).permit(:message)
  end

end

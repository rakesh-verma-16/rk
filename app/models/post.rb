class Post < ActiveRecord::Base

  def create
    @post = Post.new(create_params)
    if @post.save
      redirect to user_path, notice: 'Post successfully created.'
    else
      render new
    end
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def create_params
    params.require(:post).permit(:message,:id)
  end
end

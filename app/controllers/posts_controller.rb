class PostsController < ApplicationController
  def index
    @posts = Post.where(:is_open => true)
    binding.pry
    @offers = @posts.where(:post_type => "I'm offering services")
    @requests = @posts.where(:post_type => "I'm requesting services")
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(
                   :title,
                   :content,
                   :image_url,
                   :user_id,
                   :karma_value,
                   :is_open,
                   :karma_value,
                   :post_type,
                   :transaction_id
                  )
  end
end



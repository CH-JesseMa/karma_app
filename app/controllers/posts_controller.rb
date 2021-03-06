class PostsController < ApplicationController
  def index
    @posts = Post.where(:is_open => true)
    @offers = @posts.where(:post_type => "offer")
    @requests = @posts.where(:post_type => "request")
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
    @user = User.find_by(id: @post.user_id)
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      respond_to do |format|
        format.html { redirect_to @post }
        format.json { render json: @post }
      end
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



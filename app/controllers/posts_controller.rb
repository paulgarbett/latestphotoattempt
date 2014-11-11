class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])

    # adding in comments on show page
    @comment = Comment.new
	end

	def new
		@post = Post.new
	end

  def create
		@post = Post.new(params.require(:post).permit(:title, :camera, :desc))
		if @post.save
				redirect_to posts_path
		else
				render 'new'
		end
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	if @post.update_attributes(params.require(:post).permit(:title, :camera, :desc))
  		redirect_to post_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to posts_path
  end

  # new comment 
  def new_comment
    @id = params[:post_id]
    @post = Post.find(@id)
    @post.comments << Comment.new(params.require(:comment).permit(:author, :comment))
    if @post.save
      redirect_to post_path(:id => @id)
    end
  end


end

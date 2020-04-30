class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    
    #  Post.create(title: params[:post][:title], description: params[:post][:description])
  end

  def create 
      @post = Post.new
          @post.title = params[:title]
          @post.description = params[:description]
          @post.save
          redirect_to post_path(@post)
  end
  # add create method here
end

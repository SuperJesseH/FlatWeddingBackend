class Api::V1::PostsController < ApplicationController
# before_action :requires_login, only: [:index]

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :name,
      :body,
      :image,
      :user_id
    )
  end



end

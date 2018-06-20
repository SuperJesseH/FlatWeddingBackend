class Api::V1::PostsController < ApplicationController
  # before_action :requires_login, only: [:index]

  def index
    @posts = Post.all
    render json: @posts
  end

end

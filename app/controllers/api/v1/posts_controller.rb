class Api::V1::EventsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end


end

class Api::V1::UsersController < ApplicationController
    # before_action :requires_login, only: [:index]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user=User.new

    @user.username = params[:username]
    @user.password_digest = params[:password_digest]

    if(@user.save)

      payload = {username: @user.username,
              id: @user.id}

      token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'

      render json:{
        token: token
      }
    else
      render json: {
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params['id'])
    render json: @user
  end


end

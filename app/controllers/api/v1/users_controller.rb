class Api::V1::UsersController < ApplicationController
    # before_action :requires_login, only: [:index]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user=User.new(user_params)


    # @user.username = params[:username]
    # @user.password_digest = params[:password]
    # @user.first_name = params[:first_name]
    # @user.last_name = params[:last_name]
    # @user.notes = params[:notes]

    if(@user.save)

      payload = {username: @user.username,
              id: @user.id}

      token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'

      render json:{
        token: token,
        id: @user.id
      }

    else
      render json: {
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def show
    # reconsider this might not be secure or neccesary
    @user = User.find(params['id'])
    render json: @user
  end

  private

  def user_params
    params.permit(
      :first_name,
      :last_name,
      :username,
      :password
    )
  end


end

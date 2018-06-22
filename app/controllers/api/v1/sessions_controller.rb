class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params["username"])
    if (@user && @user.authenticate(params["password"]))

      payload = {id: @user.id}

      token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'

      render json:{
        token: token,
        id: @user.id
      }
    else
      render json: {
        errors: "Those credentials don't match anything we have in our database"
      }, status: :unauthorized
    end
  end

end

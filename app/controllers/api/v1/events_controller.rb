class Api::V1::EventsController < ApplicationController
    # before_action :requires_login, only: [:index]
  def index
    @events = Event.all
    render json: @events
  end

end

class EventSerializer < ActiveModel::UserSerializer
  attributes :name, :date, :start_time, :end_time, :user_id, :street, :city, :state, :zip_code
  belongs_to :user
end

class UserSerializer < ActiveModel::UserSerializer
  attributes: :first_name, :last_name, :street, :city, :state, :zip_code, :rsvp, :notes, :status
  has_many :events
  has_many :posts
end

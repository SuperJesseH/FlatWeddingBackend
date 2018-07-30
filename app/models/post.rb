class Post < ApplicationRecord
  belongs_to :user

  mount_uploaders :image, ImageUploader
end

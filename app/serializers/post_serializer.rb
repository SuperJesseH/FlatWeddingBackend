class PostSerializer < ActiveModel::Serializer
  attributes :name, :body, :user_id
  belongs_to :user
end

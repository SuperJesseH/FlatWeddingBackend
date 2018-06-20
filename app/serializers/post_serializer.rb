class PostSerializer < ActiveModel::PostSerializer
  attributes :name, :body, :user_id
  belongs_to :user
end

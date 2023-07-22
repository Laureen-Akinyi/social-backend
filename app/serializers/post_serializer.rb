class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :like
end

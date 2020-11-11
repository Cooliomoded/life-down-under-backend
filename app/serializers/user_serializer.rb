class UserSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :bio

  has_many :favorites
end

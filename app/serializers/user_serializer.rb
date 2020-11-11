class UserSerializer < ActiveModel::Serializer
  
  attributes :id, :username, :bio, :profile_pic, :password, :location

  has_many :favorites
end

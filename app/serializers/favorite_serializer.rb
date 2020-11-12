class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :organism_id
end

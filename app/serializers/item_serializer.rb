class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :rank
  belongs_to :category, include: false, embed: :id 
end

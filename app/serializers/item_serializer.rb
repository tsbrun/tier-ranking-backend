class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :img
  belongs_to :category, serializer: CategorySerializer
end

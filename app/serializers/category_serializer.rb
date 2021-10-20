class CategorySerializer < ActiveModel::Serializer
  attributes :title
  has_many :items
end

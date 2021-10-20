class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :category

  def category
    {
      id: object.category.id,
      title: object.category.title
    }
  end
end

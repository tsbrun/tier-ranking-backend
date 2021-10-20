class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :category
  # belongs_to :category, serializer: CategorySerializer

  def category
    {
      id: object.category.id,
      title: object.category.title
    }
  end
end

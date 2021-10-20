class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :img
  attributes :category

  def category
    # {
    #   id: object.category.id,
    #   title: object.category.title
    # }
    object.category || false 
  end
end

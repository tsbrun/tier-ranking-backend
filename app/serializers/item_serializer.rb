class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :img
  attributes :category

  def category
    # {
    #   id: object.category.id,
    #   title: object.category.title
    # }
    
    # avoid error - undefined method 'id' for nil:NilClass
    object.category || false 
  end
end

class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :items

  def items 
    object.items.map do |item|
      {
        id: item.id, 
        name: item.name, 
        img: item.img
      }
    end
  end
end

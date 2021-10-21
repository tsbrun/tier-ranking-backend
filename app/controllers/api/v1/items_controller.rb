class Api::V1::ItemsController < ApplicationController
    def index 
        items = Item.all
        render json: {
            data: ActiveModelSerializers::SerializableResource.new(items, each_serializer: ItemSerializer),
            message: ['Items fetched successfully'],
            status: 200,
            type: 'Success'
        }
    end

    def create

    end

    private 

    def item_params 
        params.require(:item).permit(:name, :img, :rank, :category)
    end
end

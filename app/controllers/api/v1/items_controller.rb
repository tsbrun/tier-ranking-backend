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
        if params[:item][:category] == nil
            item = Item.new(item_params)
        else
            item = Category.find(params[:item][:category][:id]).items.build(item_params)
        end

        if item.save
            render json: {
                data: ActiveModelSerializers::SerializableResource.new(item, serializer: ItemSerializer),
                message: ['Item created successfully'],
                status: 200, 
                type: 'Success'
            }
        else
            render json: { errors: item.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private 

    def item_params 
        params.require(:item).permit(:name, :img, :category => [:id, :title])
    end
end

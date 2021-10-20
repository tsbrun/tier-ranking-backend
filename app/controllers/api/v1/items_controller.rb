class Api::V1::ItemsController < ApplicationController
    def index 
        items = Items.all.include(:category)
        render json: {
            data: ActiveModelSerializers::SerializableResource.new(items, each_serializer: ItemSerializer),
            message: ['Items fetched successfully'],
            status: 200,
            type: 'Success'
        }
    end
end

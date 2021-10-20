class Api::V1::CategoriesController < ApplicationController
    def index 
        categories = Category.all
        render json: {
            data: ActiveModelSerializers::SerializableResource.new(categories, each_serializer: CategorySerializer),
            message: ['Categories fetched successfully'],
            status: 200,
            type: 'Success'
        }
    end
end

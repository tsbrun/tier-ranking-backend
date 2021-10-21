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

    def create 
        category = Category.new(category_params)
        if category.save 
            render json: {
                data: ActiveModelSerializers::SerializableResource.new(category, serializer: CategorySerializer),
                message: ['Category created successfully'],
                status: 200,
                type: 'Success'
            }
        else
            render json: { errors: @category.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private 

    def category_params
        params.require(:category).permit(:title)
    end
end

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
        @category = Category.new(category_params)
        if @category.save 
            render json: @category, status: :accepted
        else
            render json: { errors: @category.errors.full_messages }, status: :unprocessible_entity
        end
    end

    params 

    def category_params
        params.permit(:title)
    end
end

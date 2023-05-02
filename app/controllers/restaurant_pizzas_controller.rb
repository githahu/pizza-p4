class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid

    def create
        pizza = RestaurantPizza.create!(restaurant_pizza_params).pizza
        render json: pizza, status: :created
        
    end

    
    private
    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_record_invalid(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity 
    end
end

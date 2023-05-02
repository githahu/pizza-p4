class RestaurantsController < ApplicationController
 
    def index
        restaurants = Restaurant.all 

        render json: restaurants 
    end

    def show 
        restaurant = Restaurant.includes(:pizzas).find_by(id: params[:id])
        if restaurant 
            render json: restaurant_json(restaurant)
        else 
            render json: { error: "Restaurant not found" }, status: :not_found
        end 


    end

    private

    def restaurant_json(restaurant)
        {
            id: restaurant.id,
            name: restaurant.name,
            address: restaurant.address,
            pizzas: restaurant.pizzas.map do |pizza|
                {
                    id: pizza.id,
                    name: pizza.name,
                    ingredients: pizza.ingredients 
                }
            end
        }
    end
end

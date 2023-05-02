class PizzasController < ApplicationController
    def index 
        pizzas = Pizza.all.except
        render json: pizzas, only: [:id, :name, :ingredients]
    end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#pizzas
pizzas = Pizza.create([
  { name: 'Margherita' },
  { name: 'Pepperoni' },
  { name: 'Hawaiian' },
  { name: 'Vegetarian' }
])

#restaurants
restaurants = Restaurant.create([
  { name: 'Pizza Palace', address: '123 Main St.' },
  { name: 'Pizza Hut', address: '456 Elm St.' },
  { name: 'Papa John\'s', address: '789 Oak St.' }
])

#restaurant_pizzas
restaurant_pizzas = RestaurantPizza.create([
  { restaurant: restaurants.first, pizza: pizzas.first, price: 10 },
  { restaurant: restaurants.first, pizza: pizzas.second, price: 12 },
  { restaurant: restaurants.second, pizza: pizzas.first, price: 11 },
  { restaurant: restaurants.second, pizza: pizzas.third, price: 14 },
  { restaurant: restaurants.third, pizza: pizzas.fourth, price: 13 }
])



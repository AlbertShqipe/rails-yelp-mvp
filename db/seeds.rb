# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Destroying existing records...'
Restaurant.destroy_all
puts 'Creating new records...'
Restaurant.create(name: "Mamma Lisa", address: 'Roma', category: 'italian')
Restaurant.create(name: 'Wok Walkie', address: 'Beijing', category: 'chinese')
Restaurant.create(name: 'Shitta Foodda', address: 'Brussel', category: 'belgian')
Restaurant.create(name: 'Galette des Galettes', address: 'Lyon', category: 'french')
Restaurant.create(name: 'Sushi Ishu', address: 'Tokyo', category: 'japanese')
puts 'Records created!'

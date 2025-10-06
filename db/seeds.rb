# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'securerandom'

brands = [
  { name: "Nike", api_token: "NIKE" },
  { name: "Adidas", api_token: "ADIDAS" },
  { name: "Apple", api_token: "APPLE" },
  { name: "Samsung", api_token: "SAMSUNG" },
  { name: "Coca-Cola", api_token: "COKE" }
]

brands.each do |brand_data|
  shop = Shop.find_or_create_by!(name: brand_data[:name]) do |s|
    s.api_token = brand_data[:api_token]
  end

  puts "Creating posts for #{shop.name}..."

  1000.times do
    Post.create!(
      shop: shop,
      image_url: "https://cataas.com/cat?v=#{SecureRandom.hex}",
      likes_count: rand(0..1000),
      comments_count: rand(0..1000)
    )
  end
end

puts "Seed completed: 5 shops with 1000 posts each"

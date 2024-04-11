(1..10).each do |i|
    secret_menu_item = SecretMenuItem.create(
        menu_name: Faker::Food.dish,
        restaurant_name: Faker::Restaurant.name,
        menu_description: Faker::Food.description
    )
end

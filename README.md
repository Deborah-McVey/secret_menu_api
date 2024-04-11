https://rootstack.com/en/blog/ruby-on-rails-api

rails new secret_menu_api --api -T

gem "rack-cors"

adding gems: gem 'jwt' gem 'blueprinter' gem 'kaminari' gem "bcrypt", "~> 3.1.7" gem "rack-cors" in development: test gem 'rspec-rails' gem 'factory_bot_rails' gem 'faker'

bundle i

rails g rspec:install 
rails active_storage:install

rails g scaffold Secret_menu_item menu_name:string restaurant_name:string menu_description:string

rails db:migrate

models/secret_menu_item.rb

put in validates

rails c 

exit

db/seeds.rb

rails db:seed

rails c

SecretMenuItem.count

exit

rails s

localhost:3000/secret_menu_items

Postman routes

create new items









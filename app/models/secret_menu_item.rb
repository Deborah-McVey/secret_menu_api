class SecretMenuItem < ApplicationRecord
    validates :menu_name, :restaurant_name, :menu_description, presence: true
end

require "rails_helper"

RSpec.describe SecretMenuItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/secret_menu_items").to route_to("secret_menu_items#index")
    end

    it "routes to #show" do
      expect(get: "/secret_menu_items/1").to route_to("secret_menu_items#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/secret_menu_items").to route_to("secret_menu_items#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/secret_menu_items/1").to route_to("secret_menu_items#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/secret_menu_items/1").to route_to("secret_menu_items#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/secret_menu_items/1").to route_to("secret_menu_items#destroy", id: "1")
    end
  end
end

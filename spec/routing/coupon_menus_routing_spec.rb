require "rails_helper"

RSpec.describe CouponMenusController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coupon_menus").to route_to("coupon_menus#index")
    end

    it "routes to #new" do
      expect(:get => "/coupon_menus/new").to route_to("coupon_menus#new")
    end

    it "routes to #show" do
      expect(:get => "/coupon_menus/1").to route_to("coupon_menus#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coupon_menus/1/edit").to route_to("coupon_menus#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coupon_menus").to route_to("coupon_menus#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/coupon_menus/1").to route_to("coupon_menus#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/coupon_menus/1").to route_to("coupon_menus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coupon_menus/1").to route_to("coupon_menus#destroy", :id => "1")
    end

  end
end

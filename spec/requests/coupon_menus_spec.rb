require 'rails_helper'

RSpec.describe "CouponMenus", type: :request do
  describe "GET /coupon_menus" do
    it "works! (now write some real specs)" do
      get coupon_menus_path
      expect(response).to have_http_status(200)
    end
  end
end

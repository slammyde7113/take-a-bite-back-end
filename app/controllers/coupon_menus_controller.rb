class CouponMenusController < ApplicationController
  before_action :set_coupon_menu, only: [:show, :update, :destroy]

  # GET /coupon_menus
  def index
    @coupon_menus = CouponMenu.all

    render json: @coupon_menus
  end

  # GET /coupon_menus/1
  def show
    render json: @coupon_menu
  end

  # POST /coupon_menus
  def create
    @coupon_menu = CouponMenu.new(coupon_menu_params)

    if @coupon_menu.save
      render json: @coupon_menu, status: :created, location: @coupon_menu
    else
      render json: @coupon_menu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coupon_menus/1
  def update
    if @coupon_menu.update(coupon_menu_params)
      render json: @coupon_menu
    else
      render json: @coupon_menu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coupon_menus/1
  def destroy
    @coupon_menu.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coupon_menu
      @coupon_menu = CouponMenu.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coupon_menu_params
      params.require(:coupon_menu).permit(:price, :name, :description, :location)
    end
end

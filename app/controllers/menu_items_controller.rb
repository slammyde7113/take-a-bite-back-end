class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :update, :destroy]

  # GET /menu_items
  def index
    @menu_items = MenuItem.all

    render json: @menu_items
  end

  # GET /menu_items/1
  def show
    render json: @menu_item
  end

  # POST /menu_items
  def create
    @menu_item = MenuItem.new(menu_item_params)

    if @menu_item.save
      render json: @menu_item, status: :created, location: @menu_item
    else
      render json: @menu_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu_items_reset/
  def update
    @menu_items = MenuItem.all
    @old_menu_items = { 'Pizza' => 9, 'Big Pizza' => 19 }
    binding.pry
    MenuItem.find_each do |item|
      if item.name == @old_menu_items.key(9)
        item.price = @old_menu_items['Pizza']
      end
      if item.name == @old_menu_items.key(19)
        item.price = @old_menu_items['Big Pizza']
      end
      @menu_items.save(validate: true)
    end
    binding.pry
    render json: @menu_items
    # if @menu_item.update(menu_item_params)
    #   render json: @menu_item
    # else
    #   render json: @menu_item.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /menu_items/1
  def destroy
    @menu_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def menu_item_params
      params.require(:menu_item).permit(:price, :name, :description, :location)
    end
end

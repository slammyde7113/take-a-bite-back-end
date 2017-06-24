# class ProfilesController < OpenReadControllerApplicationController
class ProfilesController < OpenReadController

  before_action :set_profile, only: [:show, :update, :destroy]
#  before_action :all_profiles, only: [:show_user]
  # GET /profiles
  def index
    @profiles = current_user.profiles


    render json: @profiles
  end

  # GET /profiles/1
  def show
    render json: @profile.user
  end

  # def show_profiles
  #   @profiles = []
  #   Profile.find_each do |profile|
  #     if profile.user.id ==
  #       @profiles.push profile.menu_item
  #     end
  #   end
  #   render json: @profiles
  # end

  # GET /profiles/show-profile-items/1
  def show_profile_total
    @menu = []
    MenuItem.find_each do |item|
      if item.price < params[:price].to_i
        @menu.push item
      end
    end
    render json: @menu
  end

  # GET /profiles/show-profile-items/1&1
  def show_profile_items
    @profiles = []
    index = params[:menu].to_i
    puts index
    Profile.find_each do |profile|
      if profile.user.id == params[:id].to_i && profile.menu_item.id == index
        @profiles.push profile.menu_item
      end
    end
    render json: @profiles
  end



  # POST /profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  def update
  #  binding.pry
      @profile.menu_item.price = 0
      @profile.menu_item.save(validate: true)
      render json: @profile
    # else
    #   render json: @profile.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /profiles/1
  def destroy
    @profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = current_user.profiles.find(params[:id])
    end


    # def all_profiles
    #   Profile.where(params[:id]).each |x| do
    #     @profiles_array.push(x)
    #   end
    # end

    # Only allow a trusted parameter "white list" through.
    def profile_params
      params.require(:profile).permit(:user_id, :menu_item_id, :coupon_menu_id)
    end
end

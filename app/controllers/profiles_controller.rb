class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]
#  before_action :all_profiles, only: [:show_user]
  # GET /profiles
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  def show
    render json: @profile.user
  end

  # GET /profiles/show-user/1
  def show_user
    @profiles = []
    Profile.find_each do |profile|
      if profile.user.id == params[:id].to_i
        @profiles.push profile.user
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
    if @profile.update(profile_params)
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  def destroy
    @profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # def all_profiles
    #   Profile.where(params[:id]).each |x| do
    #     @profiles_array.push(x)
    #   end
    # end

    # Only allow a trusted parameter "white list" through.
    def profile_params
      params.require(:profile).permit(:user_id, :menu_item_id)
    end
end

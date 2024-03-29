class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :authenticate_current_profile, except: [:new, :create]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :require_permission, only: [:edit, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profiles   = Profile.all
    @reviews    = @profile.reviewed
    @bartenders = @profiles.limit(5)
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    if @profile.save
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    if @profile.pictures
      @profile.pictures.purge
    end

    if @profile.update(profile_params)
      redirect_to @profile, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      redirect_to jobs_path, notice: 'Profile was successfully destroyed.'
    end
  end

  def require_permission
    if current_user != Profile.find(params[:id]).user
      redirect_to bid_path(@profile)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :bio, :bartender, :user_id, :pictures, :skills1, :skills2, :skills3)
    end
end

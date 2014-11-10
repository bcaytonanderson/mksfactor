class ProfilesController < ApplicationController
  def index
    
  end

  def create
    @profile = Profile.new()
    if @profile.save
      redirect_to "/cheeses/#{@profile.cheese_id}"
  end

  def new
    @profile = Profile.new
    @profile.associations = params[:parameters]
    @all = Parameters.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def profile_params
    params.require(:group).permit(:user_id, :cheese_id)
  end

end


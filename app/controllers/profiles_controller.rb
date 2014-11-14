class ProfilesController < ApplicationController

  def index
    @cheeses = Cheese.order(:name)
  end



  def create
    @profile = Profile.new(profile_params)
    @profile.associations = params[:associations]
    if @profile.save
      redirect_to cheeses_path(@profile.cheese_id)
    else
      render 'new'
    end
  end

  def new
    @cheese = Cheese.find(params[:cheese_id])
    @profile = Profile.new
    @profile.associations = params[:parameters]
    @all = Parameter.all
  end

  def show
  end

  def edit

  end

  def update
  end

  private

  def profile_params
    params.require(:profile).permit(:user_id, :cheese_id)
  end

end


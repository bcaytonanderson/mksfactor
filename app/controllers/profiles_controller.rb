class ProfilesController < ApplicationController

  def create
    @cheese = Cheese.find(params[:profile][:cheese_id])
    @all = Parameter.all
    @profile = Profile.new(cheese_id: @cheese.id, user_id: current_user.id)
    @parameters = params[:parameters]
    if @profile.save
      redirect_to "/cheeses/#{@profile.cheese_id}"
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
    @profile = Profile.includes(cheese: [{user: :username}], :parameters).where(cheese_id: params[:id], params[:user_id])
  end

  def edit

  end

  def update
  end

  private

  def profile_params
    params.require(:profile).permit(:user_id, :cheese_id, :associations)
  end

end


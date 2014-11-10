class ProfilesController < ApplicationController
  def index
    
  end

  def create
    @cheese = Cheese.find(params[:profile][:cheese_id])
    @all = Parameter.all
    @profile = Profile.new(cheese_id: @cheese.id)
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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def profile_params
    params.require(:profile).permit(:user_id, :cheese_id, :associations)
  end

end


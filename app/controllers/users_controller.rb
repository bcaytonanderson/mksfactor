class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    
  end

  def create
  end

  def new
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

  def group_params
    params.require(:group).permit(:name, :nav)
  end

end
class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = User.find(current_user.id)
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

end
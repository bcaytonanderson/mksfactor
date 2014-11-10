class UsersParametersController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def edit
    @parameters = Parameter.all
    @userparams = UsersParameter.where(user_id: current_user.id)
    
  end

  def update
    @userparams = params[:user_params].collect {|x| UsersParameter.find_or_create_by(user_id: current_user.id, parameter_id: x)}
  end

end

class UsersParametersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @parameters = Parameter.where(open: true)
  end

  def edit
    @parameters = Parameter.all
    @userparams = UsersParameter.where(user_id: current_user.id)  
  end

  def update
    @userparams = params[:users_params].collect do |x| 
      if params[:users_params[x]] != "nil"
      parameter = Parameter.find(x.to_i)
      users_param = parameter.users_parameters.find_or_create_by(user_id: current_user.id)
      users_param.instance_variable_set((params[:users_params[x]]).to_sym, 5)
      end
    end
  end

end

class CheesesController < ApplicationController
  before_action :authenticate_user!, :except => :index

   
  def index
    @cheeses = Hash.new
    Cheese.all.each do |x|
      (@cheeses[x.style] ||= []).push(x)
    end
    @cheeses.each_value {|value| value.sort_by! {|x| x.name } }
  end

  def create
    @cheese = Cheese.new(cheese_params)
    if @cheese.save
      redirect_to "/cheeses/#{@cheese.id}"
    else
      render 'new'
    end
  end

  def new
    @cheese = Cheese.new(user_id: current_user.id, cheese_id: params[:id])
    @all = Parameters.all
  end

  def show
    @cheese = Cheese.includes(:profiles).find(params[:id])
    if @cheese.profiles.exists?(:cheese_id => @cheese.id)
      @profiles = @profiles
    else 
      @profiles = Profile.new(cheese_id: @cheese.id)
      @cheese.profiles_count += 1
    end    
  end

  def edit
    @cheese = Cheese.find(params[:id])
  end

  def update
    @cheese = Cheese.find(params[:id])
    @cheese.update(cheese_params)
    redirect_to "/cheeses/#{@cheese.id}" 
  end

  def destroy
    @cheese = Cheese.find(params[:id])
    @cheese.destroy
    redirect_to '/cheeses'
  end

  private

  def cheese_params
    params.require(:cheese).permit(:name, :producer, :region, :milk, :style, :rennet, :age, :availability, :story, :user_id)
  end

end


class Cheese < ActiveRecord::Base
  attr_accessor :user_id, :total_scores, :parameter_count

  validates :name, :producer, presence: true
  
  belongs_to :user

  has_many :profiles
  belongs_to :user 
  has_many :users, through: :profiles
  has_many :cheese_profile_parameters
  has_many :parameters, through: :cheese_profile_parameters

  after_find :build_values

  def build_values
    result = {:funky => 0, :sweet => 0, :sour => 0, :salty => 0, :bitter => 0, :savory => 0}
    parameters = Parameter.joins(:cheese_profile_parameters).where(cheese_profile_parameters: {cheese_id: @id})
     result.each_pair do |k,v|
      result[k] = parameters.sum(k)
    end
    @total_scores = result
  end

end

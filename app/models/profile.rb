class Profile < ActiveRecord::Base

  attr_accessor :values, :associations

  validates :user_id, :cheese_id, presence: true
  
  belongs_to :user, counter_cache: true
  belongs_to :cheese, counter_cache: true
  has_many :cheese_profile_parameters
  has_many :parameters, through: :cheese_profile_parameters

  after_create :associate_parameters

  after_find :build_values

  private

  def associate_parameters
    @associations.each_value do |x|
      CheeseProfileParameter.create(cheese_id: @cheese_id, profile_id: @id, parameter_id: x)
    end
  end

  def build_values
    result = {:funky => 0, :sweet => 0, :sour => 0, :salty => 0, :bitter => 0, :savory => 0}
    parameters = Parameter.joins(:cheese_profile_parameters).where(CheeseProfileParameter: {profile_id: @id})
     result.each_pair do |k,v|
      result[k] = parameters.sum(k)
    end
    @values = result
  end


end

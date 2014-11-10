class Profile < ActiveRecord::Base
  attr_reader :user_id, :cheese_id
  attr_accessor :values, :parameter_name

  validates :user_id, :cheese_id, presence: true
  
  belongs_to :user, counter_cache: true
  belongs_to :cheese, counter_cache: true
  has_many :cheese_profile_parameters
  has_many :parameters, through: :cheese_profile_parameters

  after_create :associate_parameters

  after_find :build_values

  private



  # def build_values
  #   result = {:funky => 0, :sweet => 0, :sour => 0, :salty => 0, :bitter => 0, :savory => 0}
  #   @profiles_parameters.each do |x|
  #     cheese = x.cheese

end

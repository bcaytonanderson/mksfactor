class Parameter < ActiveRecord::Base

  has_many :cheese_profile_parameter
  has_many :profiles, through: :cheese_profile_parameters
  has_many :cheeses, through: :cheese_profile_parameters

end

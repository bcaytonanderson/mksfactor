class Parameter < ActiveRecord::Base

  has_many :profiles_parameters
  has_many :profiles, through: :profiles_parameters

end

class Parameter < ActiveRecord::Base

  has_many :cheese_profile_parameters
  has_many :profiles, through: :cheese_profile_parameters
  has_many :cheeses, through: :cheese_profile_parameters

  has_many :users_parameters
  has_many :users, through: :users_parameters

  def self.types
    %w(Custom)
  end

end

class Profiles_Parameters < ActiveRecord::Base
  attr_reader :profile_id, :parameter_id
  validates :profile_id, :parameter_id, presence: true

  belongs_to :profile 
  belongs_to :parameter 
end

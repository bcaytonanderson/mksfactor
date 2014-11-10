class Profile < ActiveRecord::Base
  attr_reader :user_id
  attr_reader :cheese_id
  validates :user_id, :cheese_id, presence: true
  
  belongs_to :user, counter_cache: true
  belongs_to :cheese, counter_cache: true
  has_many :profiles_parameters
  has_many :parameters, through: :profiles_parameters
end

class Cheese < ActiveRecord::Base
  attr_reader :user_id

  validates :name, :producer, presence: true
  
  belongs_to :user

  has_many :profiles
  belongs_to :user 
  has_many :users, through: :profiles
  has_many :cheese_profile_parameters
  has_many :parameters, through: :cheese_profile_parameters

  after_find :build_values

  def build_values
    result = {}
  end


end

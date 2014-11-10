class Cheese < ActiveRecord::Base
  attr_reader :user_id
  validates :name, :producer, presence: true
  
  belongs_to :user

  has_many :profiles
  has_many :users, through: :profiles  
end

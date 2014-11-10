class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true
  validates_uniqueness_of :username

  has_many :profiles
  has_many :cheeses

  has_many :users_parameters
  has_many :parameters, through: :users_parameters
  
end

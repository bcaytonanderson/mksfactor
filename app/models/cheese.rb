class Cheese < ActiveRecord::Base
  attr_accessor :total_scores, :parameter_count

  validates :name, :producer, presence: true
  
  belongs_to :user

  has_many :profiles
  belongs_to :user 
  has_many :users, through: :profiles
  has_many :cheese_profile_parameters
  has_many :parameters, through: :cheese_profile_parameters


  def build_values
    parameters = self.parameters
    result = {:funky => parameters.sum(:funky),
     :sweet => parameters.sum(:sweet),
      :sour => parameters.sum(:sour),
       :salty => parameters.sum(:salty),
        :bitter => parameters.sum(:bitter),
         :savory => parameters.sum(:savory)}
     self.total_scores = result
  end

end

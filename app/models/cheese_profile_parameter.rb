class CheeseProfileParameter < ActiveRecord::Base

  belongs_to :profile 
  belongs_to :parameter
  belongs_to :cheese
   
end

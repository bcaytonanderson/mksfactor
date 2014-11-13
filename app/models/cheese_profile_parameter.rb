class CheeseProfileParameter < ActiveRecord::Base

  belongs_to :profile, counter_cache: :parameters_count
  belongs_to :parameter
  belongs_to :cheese
   
end

class UsersParameter < ActiveRecord::Base
  belongs_to :user
  belongs_to :parameter  
end

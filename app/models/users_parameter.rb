class UsersParameter < ActiveRecord::Base
  belongs_to :user
  belongs_to :parameter, counter_cache: true

  after_save :parameter_recalculate


  def parameter_recalculate
    self.parameter.calculate_values
  end

end

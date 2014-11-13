class Parameter < ActiveRecord::Base

  has_many :cheese_profile_parameters
  has_many :profiles, through: :cheese_profile_parameters
  has_many :cheeses, through: :cheese_profile_parameters

  has_many :users_parameters
  has_many :users, through: :users_parameters




  def calculate_values
    if (self.users_parameters && self.open)
      self.funky = (self.funky + self.users_parameters.inject(0) {|sum, x| sum + x.values[:funky]}) / (self.users_parameters_count + 1)
      self.sweet = (self.sweet + self.users_parameters.inject(0) {|sum, x| sum + x.values[:sweet]}) / (self.users_parameters_count + 1)
      self.sour = (self.sour + self.users_parameters.inject(0) {|sum, x| sum + x.values[:sour]}) / (self.users_parameters_count + 1)
      self.salty = (self.salty + self.users_parameters.inject(0) {|sum, x| sum + x.values[:salty]}) / (self.users_parameters_count + 1)
      self.bitter = (self.bitter + self.users_parameters.inject(0) {|sum, x| sum + x.values[:bitter]}) / (self.users_parameters_count + 1)
      self.savory = (self.savory + self.users_parameters.inject(0) {|sum, x| sum + x.values[:savory]}) / (self.users_parameters_count + 1)
      self.save
    end
    return self
  end


end

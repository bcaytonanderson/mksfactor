class Profile < ActiveRecord::Base

  attr_accessor :values, :associations

  validates :user_id, :cheese_id, presence: true
  
  belongs_to :user, counter_cache: true
  belongs_to :cheese, counter_cache: true
  has_many :cheese_profile_parameters
  has_many :parameters, through: :cheese_profile_parameters

  after_create :associate_parameters

  after_find :build_values

  private

  def associate_parameters
    @associations.each_pair do |k,v|
      if v != 'nil'
        self.cheese_profile_parameters.create(cheese_id: self.cheese_id, parameter_id: v.to_i)
      end
    end
  end

  def build_values
    # factor = self.parameters.size / 6
    @values = {:funky => (self.parameters.pluck(:funky).inject(0) {|sum, x| sum + x}) * (self.parameters.size / 6),
     :sweet => (self.parameters.pluck(:sweet).inject(0) {|sum, x| sum + x}) * (self.parameters.size / 6),
      :sour => (self.parameters.pluck(:sour).inject(0) {|sum, x| sum + x}) * (self.parameters.size / 6),
       :salty => (self.parameters.pluck(:salty).inject(0) {|sum, x| sum + x}) * (self.parameters.size / 6),
        :bitter => (self.parameters.pluck(:bitter).inject(0) {|sum, x| sum + x}) * (self.parameters.size / 6),
         :savory => (self.parameters.pluck(:savory).inject(0) {|sum, x| sum + x}) * (self.parameters.size / 6)}
  end



end

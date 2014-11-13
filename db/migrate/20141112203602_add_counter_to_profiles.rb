class AddCounterToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :parameters_count, :integer, default: 0
    change_column :parameters, :users_parameters_count, :integer, default: 0
    change_column :users, :users_parameters_count, :integer, default: 0
    change_column :cheeses, :profiles_count, :integer, default: 0
    change_column :users, :cheeses_count, :integer, default: 0
    change_column :users, :profiles_count, :integer, default: 0
  end
end

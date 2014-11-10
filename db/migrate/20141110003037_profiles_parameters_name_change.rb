class ProfilesParametersNameChange < ActiveRecord::Migration
  def change
    rename_table :parameters_profiles, :profiles_parameters
  end
end

class ProfileParameters < ActiveRecord::Migration
  def change
    create_table :cheese_profile_parameters, force: true do |t|
      t.references :profile
      t.references :parameter
      t.references :cheese
    end

    add_index :cheese_profile_parameters, :cheese_id
    add_index :cheese_profile_parameters, :profile_id
  end
end

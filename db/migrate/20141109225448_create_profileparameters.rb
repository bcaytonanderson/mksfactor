class CreateProfileparameters < ActiveRecord::Migration
  def change
    create_join_table :parameters, :profiles, column_options: {null: false}, force: true do |t|
      t.index :profile_id
      t.index :parameter_id
    end


  end
end

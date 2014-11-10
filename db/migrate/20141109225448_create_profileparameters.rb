class CreateProfileparameters < ActiveRecord::Migration
  def change
    create_join_table :profiles, :parameters, column_options: {null: false}, force: true do |t|
      t.index :profile_id
      t.index :parameter_id
    end


  end
end

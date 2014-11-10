class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles, force: true do |t|
      t.references :cheese
      t.references :user
      t.integer :parameters_count, default: 0, null: false
      t.timestamps
    end
  end
end

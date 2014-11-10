class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles, force: true do |t|
      t.references :cheese
      t.references :user
      
      t.timestamps
    end
  end
end

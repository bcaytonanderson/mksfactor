class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters, force: true do |t|
      t.string :name, null: false
      t.integer :funky, default: 0, null: false
      t.integer :sweet, default: 0, null: false
      t.integer :sour, default: 0, null: false
      t.integer :salty, default: 0, null: false
      t.integer :bitter, default: 0, null: false
      t.integer :savory, default: 0, null: false

      t.timestamps
    end
  end
end

class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses, force: true do |t|
      t.string :name, null: false
      t.string :producer, null: false
      t.string :region
      t.string :milk
      t.string :style
      t.string :rennet
      t.string :age
      t.string :availability
      t.text :story
      t.references :user, null: false
      t.timestamps
      t.integer :profiles_count, default: 0, null: false
    end

    add_column :users, :cheeses_count, :integer, default: 0, null: false
    add_column :users, :profiles_count, :integer, default: 0, null: false
  end
end

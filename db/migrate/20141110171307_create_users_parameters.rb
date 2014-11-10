class CreateUsersParameters < ActiveRecord::Migration
  def change
    create_table :users_parameters do |t|
      t.references :user
      t.references :parameter
      t.string :name
      t.integer :funky
      t.integer :sweet
      t.integer :sour
      t.integer :salty
      t.integer :bitter
      t.integer :savory

      t.timestamps
    end

    add_index :users_parameters, :user_id
    add_index :users_parameters, :parameter_id

    add_column :parameters, :editable, :boolean, default: false
    add_column :parameters, :users_parameters_count, :integer, default: 0, null: false

    add_column :users, :users_parameters_count, :integer, default: 0, null: false
  end
end

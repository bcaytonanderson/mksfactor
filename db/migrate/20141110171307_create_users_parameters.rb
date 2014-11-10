class CreateUsersParameters < ActiveRecord::Migration
  def change
    create_table :users_parameters do |t|
      t.references :user
      t.references :parameter
      t.string :name
      t.integer :funky, default: 0, null: false
      t.integer :sweet, default: 0, null: false
      t.integer :sour, default: 0, null: false
      t.integer :salty, default: 0, null: false
      t.integer :bitter, default: 0, null: false
      t.integer :savory, default: 0, null: false

      t.timestamps
    end

    add_index :users_parameters, :user_id
    add_index :users_parameters, :parameter_id

    add_column :parameters, :editable, :boolean, default: false
    add_column :parameters, :users_parameters_count, :integer, default: 0, null: false

    add_column :users, :users_parameters_count, :integer, default: 0, null: false
  end
end

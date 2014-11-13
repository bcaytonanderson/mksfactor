class EditParameters < ActiveRecord::Migration
  def change
    remove_column :parameters, :created_at
    remove_column :parameters, :updated_at
    remove_column :parameters, :editable
    add_column :parameters, :open, :boolean, default: true, null: false 
  end
end

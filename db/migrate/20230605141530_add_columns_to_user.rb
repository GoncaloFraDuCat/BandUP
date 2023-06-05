class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :city, :string
    add_column :users, :age, :integer
    add_column :users, :instruments, :string
    add_column :users, :interests, :string
  end
end

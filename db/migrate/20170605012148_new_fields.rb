class NewFields < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :type, :string
  end
end

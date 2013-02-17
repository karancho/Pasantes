class AddCuilToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cuil, :string
  end
end

class Users < ActiveRecord::Migration
  def up
    add_column :users, :treatment_id, :integer
  end

  def down
  end
end

class AddYearToUser < ActiveRecord::Migration
  def change
    add_column :users, :anioegreso, :integer
  end
end

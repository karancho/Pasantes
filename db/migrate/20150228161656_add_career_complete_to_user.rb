class AddCareerCompleteToUser < ActiveRecord::Migration
  def change
    add_column :users, :careercomplete, :boolean
  end
end

class AddGraduatedToUser < ActiveRecord::Migration
  def change
    add_column :users, :graduated, :boolean
  end
end

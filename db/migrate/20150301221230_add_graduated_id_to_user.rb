class AddGraduatedIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :graduated_id, :integer
  end
end

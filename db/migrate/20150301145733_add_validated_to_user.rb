class AddValidatedToUser < ActiveRecord::Migration
  def change
    add_column :users, :validated, :boolean
  end
end

class AddValidatedIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :validated_id, :integer
  end
end

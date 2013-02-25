class RemoveTimestampsFromContract < ActiveRecord::Migration
  def up
    remove_column :contracts, :created_at
    remove_column :contracts, :updated_at
  end

  def down
  end
end

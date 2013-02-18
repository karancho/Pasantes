class AddBossPositionToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :position, :string
  end
end

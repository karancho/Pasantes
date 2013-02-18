class AddManagerCuilToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :manager_cuil, :string
  end
end

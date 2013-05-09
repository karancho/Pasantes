class AddRazonToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :razon, :string
  end
end

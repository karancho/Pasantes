class AddBossTreatmentIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :bosstreatment_id, :integer
    add_column :companies, :managertreatment_id, :integer
  end
end

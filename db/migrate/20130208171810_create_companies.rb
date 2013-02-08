class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.integer :locality_id
      t.string :manager
      t.string :boss

      t.timestamps
    end
  end
end

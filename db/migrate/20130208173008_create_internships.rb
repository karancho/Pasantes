class CreateInternships < ActiveRecord::Migration
  def change
    create_table :internships do |t|
      t.integer :company_id
      t.string :description_job
      t.integer :situation_id
      t.date :date_from
      t.date :date_until
      t.integer :hs_monday
      t.integer :hs_tuesday
      t.integer :hs_wednesday
      t.integer :hs_thursday
      t.integer :hs_friday
      t.integer :hs_saturday
      t.integer :hs_sunday

      t.timestamps
    end
  end
end

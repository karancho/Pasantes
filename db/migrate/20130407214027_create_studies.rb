class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :academy
      t.date :from
      t.date :until
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end

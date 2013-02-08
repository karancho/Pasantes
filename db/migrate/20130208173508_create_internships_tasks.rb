class CreateInternshipsTasks < ActiveRecord::Migration
  def change
    create_table :internships_tasks do |t|
      t.integer :internship_id
      t.integer :task_id

      t.timestamps
    end
  end
end

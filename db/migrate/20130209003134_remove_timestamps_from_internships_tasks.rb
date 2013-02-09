class RemoveTimestampsFromInternshipsTasks < ActiveRecord::Migration
  def up
    remove_column :internships_tasks, :updated_at
    remove_column :internships_tasks, :created_at 
  end

  def down
  end
end

class AddColumTypeToInternships < ActiveRecord::Migration
  def change
    add_column :internships, :type_id, :integer
  end
end

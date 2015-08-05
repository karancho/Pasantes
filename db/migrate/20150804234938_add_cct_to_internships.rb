class AddCctToInternships < ActiveRecord::Migration
  def change
    add_column :internships, :cct, :string
  end
end

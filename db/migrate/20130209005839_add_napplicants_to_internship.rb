class AddNapplicantsToInternship < ActiveRecord::Migration
  def change
    add_column :internships, :napplicants, :integer
  end
end

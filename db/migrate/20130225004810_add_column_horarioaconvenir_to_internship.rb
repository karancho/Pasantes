class AddColumnHorarioaconvenirToInternship < ActiveRecord::Migration
  def change
    add_column :internships, :horario, :boolean
  end
end

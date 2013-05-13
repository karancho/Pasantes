class AddCoberturaSaludToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :art, :string, :default => 'COMPLETAR'
    add_column :companies, :obsocial, :string, :default => 'COMPLETAR'
  end
end

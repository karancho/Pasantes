class Add < ActiveRecord::Migration
  def up
    add_column :companies, :boss_dni, :string
  end

  def down
  end
end

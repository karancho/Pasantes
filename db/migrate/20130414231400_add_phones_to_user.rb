class AddPhonesToUser < ActiveRecord::Migration
  def change
    add_column :users, :celphone, :string
    add_column :users, :homephone, :string
  end
end

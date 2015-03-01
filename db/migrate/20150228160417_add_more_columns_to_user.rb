class AddMoreColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :career, :string
    add_column :users, :working, :boolean
    add_column :users, :workwhere, :string
    add_column :users, :searchingjob, :boolean
    add_column :users, :skills, :string
    add_column :users, :skillstoimprove, :string
    add_column :users, :skype, :string
  end
end

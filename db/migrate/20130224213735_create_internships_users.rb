class CreateInternshipsUsers < ActiveRecord::Migration
  def change
    create_table :internships_users, :id => false do |t|
      t.integer :internship_id
      t.integer :user_id
    end
  end
end

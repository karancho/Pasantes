class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :enterprise_name
      t.string :position
      t.string :area
      t.date :from
      t.date :until
      t.boolean :workingnow
      t.string :taskdescription
      t.integer :user_id

      t.timestamps
    end
  end
end

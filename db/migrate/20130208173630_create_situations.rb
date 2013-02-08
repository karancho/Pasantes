class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.string :status

      t.timestamps
    end
  end
end

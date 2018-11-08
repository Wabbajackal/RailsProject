class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :hunter, foreign_key: true
      t.references :vehicle, foreign_key: true
      t.references :target, foreign_key: true
      t.references :location, foreign_key: true
      t.decimal :total_cost
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.references :schedule, foreign_key: true
      t.decimal :hunter_cost
      t.decimal :vehicle_cost
      t.decimal :tax
      t.decimal :total_cost

      t.timestamps
    end
  end
end

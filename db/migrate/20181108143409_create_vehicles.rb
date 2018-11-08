class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :type
      t.decimal :cost

      t.timestamps
    end
  end
end

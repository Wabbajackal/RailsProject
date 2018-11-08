class CreateHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :hunters do |t|
      t.string :name
      t.text :description
      t.decimal :cost

      t.timestamps
    end
  end
end

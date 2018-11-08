class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
      t.references :specie, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

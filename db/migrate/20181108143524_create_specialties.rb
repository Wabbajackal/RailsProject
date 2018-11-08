class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.references :hunter, foreign_key: true
      t.references :specie, foreign_key: true
      t.decimal :modifier

      t.timestamps
    end
  end
end

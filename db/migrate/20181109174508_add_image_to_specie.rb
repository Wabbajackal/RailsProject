class AddImageToSpecie < ActiveRecord::Migration[5.2]
  def change
    add_column :species, :image, :string
  end
end

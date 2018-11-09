class AddImageToHunter < ActiveRecord::Migration[5.2]
  def change
    add_column :hunters, :image, :string
  end
end

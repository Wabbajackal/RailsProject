class AddImageToTarget < ActiveRecord::Migration[5.2]
  def change
    add_column :targets, :image, :string
  end
end

class AddNameToProvince < ActiveRecord::Migration[5.2]
  def change
    add_column :provinces, :name, :string
    add_column :provinces, :tax, :integer
  end
end

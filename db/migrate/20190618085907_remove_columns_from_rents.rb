class RemoveColumnsFromRents < ActiveRecord::Migration[5.0]
  def change
    remove_column :rents, :property_name, :string
  end
end

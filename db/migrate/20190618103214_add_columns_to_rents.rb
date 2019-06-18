class AddColumnsToRents < ActiveRecord::Migration[5.0]
  def change
    add_column :rents, :property_name, :string, null: false, default: ""
    add_column :rents, :fee, :string, null: false, default: ""
    add_column :rents, :address, :string, null: false, default: ""
    add_column :rents, :age, :string, null: false, default: ""
  end
end

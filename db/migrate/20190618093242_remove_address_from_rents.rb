class RemoveAddressFromRents < ActiveRecord::Migration[5.0]
  def change
    remove_column :rents, :address, :string
  end
end

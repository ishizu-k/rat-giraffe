class CreateRents < ActiveRecord::Migration[5.0]
  def change
    create_table :rents do |t|
      t.string :property_name
      t.string :fee
      t.string :address
      t.string :age
      t.string :note
      t.timestamps
    end
  end
end

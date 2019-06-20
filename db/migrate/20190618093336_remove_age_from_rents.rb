class RemoveAgeFromRents < ActiveRecord::Migration[5.0]
  def change
    remove_column :rents, :age, :string
  end
end

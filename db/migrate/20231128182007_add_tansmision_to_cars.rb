class AddTansmisionToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :transmission, :string
  end
end

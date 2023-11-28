class AddAreaToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :area, :string
  end
end

class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.boolean :available
      t.float :price
      t.string :pickup_location
      t.string :return_location
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

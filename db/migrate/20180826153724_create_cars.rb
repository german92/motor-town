class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :license_plate
      t.integer :last_service_id
      t.integer :client_id

      t.timestamps
    end
  end
end

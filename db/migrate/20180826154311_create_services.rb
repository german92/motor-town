class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :type
      t.datetime :date
      t.string :additional_details
      t.integer :client_id
      t.integer :car_id

      t.timestamps
    end
  end
end

class CreateVacationDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :vacation_destinations do |t|
      t.integer :vacation_id
      t.integer :destination_id

      t.timestamps
    end
  end
end

class CreateVacations < ActiveRecord::Migration[6.0]
  def change
    create_table :vacations do |t|
      t.string :title
      t.string :description
      t.datetime :date
      t.boolean :public
      t.integer :user_id

      t.timestamps
    end
  end
end

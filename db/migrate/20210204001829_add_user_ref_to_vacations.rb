class AddUserRefToVacations < ActiveRecord::Migration[6.0]
  def change
    add_reference :vacations, :user, index: true
  end
end

class RemoveUserIdFromVacations < ActiveRecord::Migration[6.0]
  def change
    remove_column :vacations, :user_id, :integer
  end
end

class ChangeColumnAndAddNewOneToDestinations < ActiveRecord::Migration[6.0]
  def change
    remove_column :destinations, :rating, :integer
    remove_column :destinations, :description, :text
    rename_column :destinations, :location, :country
    rename_column :destinations, :name, :state
    add_column :destinations, :city, :string
  end
end

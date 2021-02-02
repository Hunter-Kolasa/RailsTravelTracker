class ChangeDescriptionDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :destinations, :description, :text
    change_column :vacations, :description, :text
  end
end

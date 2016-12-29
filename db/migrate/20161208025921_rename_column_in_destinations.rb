class RenameColumnInDestinations < ActiveRecord::Migration[5.0]
  def change
    rename_column :destinations, :weather, :weather_hi
  end
end

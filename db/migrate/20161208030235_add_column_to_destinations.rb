class AddColumnToDestinations < ActiveRecord::Migration[5.0]
  def change
    add_column :destinations, :weather_lo, :string
  end
end

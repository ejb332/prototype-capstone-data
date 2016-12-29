class RenameWeatherColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :destinations, :weather_hi, :destination_hi
    rename_column :destinations, :weather_lo, :destination_lo
  end
end

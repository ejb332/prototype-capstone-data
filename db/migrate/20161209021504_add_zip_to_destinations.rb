class AddZipToDestinations < ActiveRecord::Migration[5.0]
  def change
    add_column :destinations, :zip, :string
  end
end

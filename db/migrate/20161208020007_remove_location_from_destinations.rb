class RemoveLocationFromDestinations < ActiveRecord::Migration[5.0]
  def change
    remove_column :destinations, :location, :string
  end
end

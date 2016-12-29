class AddColumnsToDestinations < ActiveRecord::Migration[5.0]
  def change
    add_column :destinations, :city, :string
    add_column :destinations, :state, :string
    add_column :destinations, :country, :string
  end
end

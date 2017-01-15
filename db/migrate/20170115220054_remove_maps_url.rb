class RemoveMapsUrl < ActiveRecord::Migration[5.0]
  def change
    remove_column :destinations, :map_url, :string
  end
end

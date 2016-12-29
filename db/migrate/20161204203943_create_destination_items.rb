class CreateDestinationItems < ActiveRecord::Migration[5.0]
  def change
    create_table :destination_items do |t|
      t.integer :destination_id
      t.integer :item_id

      t.timestamps
    end
  end
end

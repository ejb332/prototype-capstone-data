class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :date
      t.string :weather
      t.string :map_url
      t.integer :user_id

      t.timestamps
    end
  end
end

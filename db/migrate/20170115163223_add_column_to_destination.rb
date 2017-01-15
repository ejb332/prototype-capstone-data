class AddColumnToDestination < ActiveRecord::Migration[5.0]
  def change
    rename_column :destinations, :date, :start_date
    add_column :destinations, :end_date, :datetime
  end
end

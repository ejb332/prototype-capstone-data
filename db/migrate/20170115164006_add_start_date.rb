class AddStartDate < ActiveRecord::Migration[5.0]
  def change
    add_column :destinations, :start_date, :datetime
  end
end

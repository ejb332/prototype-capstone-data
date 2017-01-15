class RemoveDateColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :destinations, :start_date, :string
  end
end

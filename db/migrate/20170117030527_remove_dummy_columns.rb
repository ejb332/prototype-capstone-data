class RemoveDummyColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :destinations, :destination_hi, :string
    remove_column :destinations, :destination_lo, :string
  end
end

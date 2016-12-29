class RemoveColumnFromItemModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :category, :string
  end
end

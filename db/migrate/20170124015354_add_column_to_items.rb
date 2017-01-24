class AddColumnToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :tags, :string
  end
end

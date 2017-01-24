class AddImgUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :img_url, :string
  end
end

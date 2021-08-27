class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :item_number
      t.string :item_name
      t.string :description
      t.float :price
      t.integer :qty
      t.string :img_url
      t.integer :category_id

      t.timestamps
    end
  end
end

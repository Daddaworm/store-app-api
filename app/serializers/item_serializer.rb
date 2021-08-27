class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_number, :item_name, :description, :price, :qty, :img_url, :category_id

  has_many :carts, through: :line_items
end

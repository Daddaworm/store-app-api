class ItemSerializer < ActiveModel::Serializer
  attributes :item_number, :item_name, :description, :price, :qty, :img_url, :category_id

  belongs_to :category
  has_many :carts, through: :line_items
end

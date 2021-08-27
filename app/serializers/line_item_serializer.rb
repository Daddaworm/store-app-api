class LineItemSerializer < ActiveModel::Serializer
  attributes :item_id, :cart_id

  belongs_to :item
  belongs_to :cart
end

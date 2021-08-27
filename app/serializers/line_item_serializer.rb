class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :cart_id
end

class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :items

  belongs_to :user
  has_many :items, through: :line_items
end

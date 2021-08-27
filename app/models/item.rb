class Item < ApplicationRecord
    belongs_to :category 
    has_many :carts, through: :line_items
end

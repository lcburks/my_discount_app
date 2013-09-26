class Item < ActiveRecord::Base
  attr_accessible :brand, :list_price, :name
  has_and_belongs_to_many :discounts #needs join table
  has_many :purchase_items
end

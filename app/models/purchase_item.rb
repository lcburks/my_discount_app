class PurchaseItem < ActiveRecord::Base
  attr_accessible :purchase_price, :member_id, :discount_id, :item_id
  belongs_to :member 
  belongs_to :discount #1:29:45 explanation#
  belongs_to :item
end

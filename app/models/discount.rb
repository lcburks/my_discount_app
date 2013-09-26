class Discount < ActiveRecord::Base
  attr_accessible :category, :group_id, :percent
  belongs_to :member
  has_one :purchase_item #1:33:00#
  has_and_belongs_to_many :items #1:36:00#
end

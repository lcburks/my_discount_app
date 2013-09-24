class Discount < ActiveRecord::Base
  attr_accessible :category, :group_id, :percent
end

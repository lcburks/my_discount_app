class Group < ActiveRecord::Base
  attr_accessible :category, :name
  has_and_belongs_to_many :members
end

class Member < ActiveRecord::Base
  attr_accessible :birthday, :firstname, :gender, :last_name
end

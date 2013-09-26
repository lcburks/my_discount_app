class Member < ActiveRecord::Base
  attr_accessible :birthday, :firstname, :gender, :last_name, :email, :password, :password_confirmation, :remember_me
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  has_many :discounts
  has_many :purchase_items
  has_and_belongs_to_many :groups
end



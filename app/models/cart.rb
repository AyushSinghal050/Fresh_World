class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :vegetable
  has_many :cartsitem
  has_many :fruit
end

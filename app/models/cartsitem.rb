class Cartsitem < ActiveRecord::Base
  belongs_to :user
  belongs_to :fruit
  belongs_to :vegetable
  belongs_to :cart
end

json.extract! cartsitem, :id, :item, :amount, :quantity, :user_id, :fruit_id, :vegetable_id, :cart_id, :created_at, :updated_at
json.url cartsitem_url(cartsitem, format: :json)

json.extract! order, :id, :Status, :Buyername, :Buyernumber, :Buyeraddress, :cart_id, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)

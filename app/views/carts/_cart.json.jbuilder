json.extract! cart, :id, :item, :amount, :quantity, :user_id, :vegetable_id, :fruit_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)

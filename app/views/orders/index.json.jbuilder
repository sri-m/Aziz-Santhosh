json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :ord_name, :ord_price, :ord_qty
  json.url order_url(order, format: :json)
end

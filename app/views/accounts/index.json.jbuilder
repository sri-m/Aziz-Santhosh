json.array!(@accounts) do |account|
  json.extract! account, :id, :customer_id, :acc_name, :acc_type, :acc_balance, :acc_bank_address
  json.url account_url(account, format: :json)
end

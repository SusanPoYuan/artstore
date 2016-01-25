Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "11421185"  # 放測試站的 key

    pay2go.hash_key    = "WmKvlrzgXGjYdTFlpTJfthAh9YdSSEsO"
    pay2go.hash_iv     = "1cknETDCzXBNQg9f"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = "11421185"  # 放正式站的 key

    pay2go.hash_key    = "WmKvlrzgXGjYdTFlpTJfthAh9YdSSEsO"
    pay2go.hash_iv     = "1cknETDCzXBNQg9f"
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end
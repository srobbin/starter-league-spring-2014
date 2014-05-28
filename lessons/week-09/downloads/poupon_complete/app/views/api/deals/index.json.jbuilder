json.array!(@deals) do |deal|
  json.extract! deal, :id, :title, :description, :original_price, :discounted_price, :num_purchased
  json.url api_deal_url(deal, format: :json)
end
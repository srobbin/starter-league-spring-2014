ActiveAdmin.register Deal do
  permit_params :title, :description, :original_price, :discounted_price, :num_purchased
end

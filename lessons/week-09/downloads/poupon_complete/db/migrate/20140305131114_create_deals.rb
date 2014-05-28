class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.integer :original_price
      t.integer :discounted_price
      t.integer :num_purchased, default: 0

      t.timestamps
    end
  end
end

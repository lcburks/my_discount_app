class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.integer :list_price
      t.timestamps
    end
    create_table :discounts_items, :id => false do |t|  #1:59:00 !!#
    	t.integer :discount_id
    	t.integer :item_id
    end
  end
end

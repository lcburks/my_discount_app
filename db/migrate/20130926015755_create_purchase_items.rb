class CreatePurchaseItems < ActiveRecord::Migration
  def change
    create_table :purchase_items do |t|
      t.integer :purchase_price
      t.integer :member_id
      t.integer :discount_id
      t.integer :item_id
      t.timestamps
    end
  end
end

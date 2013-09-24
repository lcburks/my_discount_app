class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.string :category
      t.integer :group_id
      t.integer :percent

      t.timestamps
    end
  end
end

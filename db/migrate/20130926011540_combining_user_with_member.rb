class CombiningUserWithMember < ActiveRecord::Migration
  def up 
  	add_column :users, :last_name, :string
  	add_column :users, :first_name, :string
  	add_column :users, :birthday, :date
  	add_column :users, :gender, :string
  	drop_table :members
  	rename_table :users, :members
    remove_index :members, :name => :index_users_on_email
    remove_index :members, :name => :index_users_on_reset_password_token
    add_index :members, :email
    add_index :members, :reset_password_token 
  end

  def down
  	rename_table :members, :users 
  	create_table "members", :force => true do |t|
	    t.string   "last_name"
	    t.string   "first_name"
	    t.date     "birthday"
	    t.string   "gender"
	    t.datetime "created_at", :null => false
	    t.datetime "updated_at", :null => false
  	end
  end 
end

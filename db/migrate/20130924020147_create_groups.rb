class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
    create_table :groups_members, :id => false do |t|
  		t.references :group, :null => false
  		t.references :member, :null => false
  	end
  end

end


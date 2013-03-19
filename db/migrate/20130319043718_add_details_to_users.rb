class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :address, :string
  	add_column :users, :phone, :integer
  	add_column :users, :picture, :text
  	add_column :users, :occupation, :string
  end
end

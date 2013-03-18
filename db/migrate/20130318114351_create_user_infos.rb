class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :name
      t.integer :age
      t.string :occupation
      t.string :phone
      t.string :address
      t.string :education
      t.string :pictuer

      t.timestamps
    end
  end
end

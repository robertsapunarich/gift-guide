class AddUserToGifts < ActiveRecord::Migration[5.1]
  def change
    add_column :gifts, :user_id, :integer
    add_index :gifts, :user_id
    add_foreign_key :gifts, :users
  end
end

class AddIndexesToTables < ActiveRecord::Migration[6.0]
  def change
  	add_index :followings, [:followed_id, :follower_id]
  	add_index :likes, [:user_id, :rant_id]
  	add_index :rants, :author_id
  end
end

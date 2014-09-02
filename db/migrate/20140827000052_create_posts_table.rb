class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
		t.string :user_id
		t.string :reply
		t.integer :favorite
		t.integer :repost
		t.string :text
		t.timestamp
  end
end
end

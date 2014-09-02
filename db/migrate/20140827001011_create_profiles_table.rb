class CreateProfilesTable < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
		t.string :fname
		t.string :lname
		t.string :username
		t.string :about
		t.string :location
		t.string :website
		t.integer :posts
		t.integer :following
		t.integer :followers
  end
end
end

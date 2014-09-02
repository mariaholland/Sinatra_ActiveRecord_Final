class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
		t.string :fname
		t.string :lname
		t.string :email
		t.string :password
		t.string :username
		t.string :user_id
	end
  end
end

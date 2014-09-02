class User < ActiveRecord::Base
	has_many :posts
	has_one :profile
end

class Post < ActiveRecord::Base
	belongs_to :user
end

class Profile < ActiveRecord::Base
	 has_one :user
end

class UserPost < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
end
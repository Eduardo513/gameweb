class User < ActiveRecord::Base
	has_secure_password
	has_one:leaderboard
	has_many:comment,  dependent: :destroy
	
	validates :username, uniqueness: true
	validates :username, presence: true
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	def self.search(query)
		where("username LIKE ?", "%#{query}%")
	end
	
	def age
		age = ((Time.now - created_at) /60 /60 /24).round
		return age
	end
	
	
end

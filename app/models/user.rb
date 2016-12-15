class User < ActiveRecord::Base
	has_secure_password
	belongs_to:leaderboard
	has_many:comments,  dependent: :destroy
	
	validates :email, uniqueness: true
	validates :email, presence: true
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

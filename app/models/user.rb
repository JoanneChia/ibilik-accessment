class User < ActiveRecord::Base

	has_many :properties
	has_many :comments 
	has_many :bookings
	

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
	validates :password, presence: true
	validates :name, presence: true


	def self.authenticate(email, password)
		user = User.find_by(email: email)
		if user && user.password == password 
			return user
		else
			nil 
		end
	end
end
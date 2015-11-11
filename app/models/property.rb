class Property < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
		belongs_to :user 
		has_many :users 
		has_many :comments
		has_many :bookings
		
		validates :description, presence: true
		validates :price, presence: true
end

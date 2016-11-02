class Book < ApplicationRecord
	belongs_to :author
	has_many :comments
	has_many :bookings
end

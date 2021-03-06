class Book < ApplicationRecord
	belongs_to :author
	has_many :comments
	has_many :bookings

  validates :title, presence: true
  validates :year, presence: true
  validates :isbn, presence: true

  mount_uploader :image, ImageUploader

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end

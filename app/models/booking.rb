class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum stat: [:pending, :acepted, :finished, :denied]
  before_validation :set_status

  def set_status
      self.stat = 0
  end
end

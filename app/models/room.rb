class Room < ApplicationRecord
  has_many :bookings
  has_one_attached :picture


  scope :ordered, lambda { order("number") }
  scope :oldest_first, lambda { order("created_at ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :search, ->(query) { where(["number LIKE ?", "%#{query}%"]) }
end

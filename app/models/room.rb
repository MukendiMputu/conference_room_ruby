class Room < ApplicationRecord
    scope :oldest_first, lambda { order("created_at ASC") }
    scope :newest_first, lambda { order("created_at DESC") }
    scope :search, ->(query) { where(["number LIKE ?", "%#{query}%"])}
end

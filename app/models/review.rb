class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :content, :rating, :restaurant_id
  validate :rating, :inclusion => 1..5
end

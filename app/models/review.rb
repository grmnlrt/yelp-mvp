class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :content, :rating, :restaurant_id
  validates :rating, inclusion: 0..5, numericality: { only_integer: true }
end

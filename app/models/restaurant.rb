class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian", "mexican", "thai", "moroccan", "lebanese"]
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address, :category
  validates :category, inclusion: { in: CATEGORIES }

  def average
    ratings = self.reviews.length
    sum = self.reviews.inject(0){|sum,review| sum + review.rating }
    ratings != 0 ? (sum.to_f / ratings).round() : "No review yet"
  end
end

class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address
  validate :category, :inclusion=> { :in => CATEGORIES }
end

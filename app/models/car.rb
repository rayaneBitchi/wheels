class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :model, presence: true, length: { minimum: 4 }
  validates :year, presence: true, numericality: { in: 1960..2024 }
end

class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :listings
  has_many_attached :photos
  validates :model, presence: true
end

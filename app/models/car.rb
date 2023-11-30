class Car < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many_attached :photos
  validates :model, presence: true
end

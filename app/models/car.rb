class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :model, presence: true
end

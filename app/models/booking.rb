class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :pickup_date, presence: true
  validates :return_date, comparison: { greater_than: :pickup_date }
end

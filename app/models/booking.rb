class Booking < ApplicationRecord
  belongs_to :car, dependent: :destroy
  belongs_to :user, dependent: :destroy
  validates :pickup_date, presence: true
  validates :return_date, comparison: { greater_than: :pickup_date }
end

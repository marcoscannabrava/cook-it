class Booking < ApplicationRecord
  validates :start_at, uniqueness: true
  validates :end_at, uniqueness: true
  belongs_to :user
  belongs_to :kitchen


end

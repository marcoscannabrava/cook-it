class Booking < ApplicationRecord
  validates :start_at, uniqueness: true
  validates :end_at, uniqueness: true
  belongs_to :user
  belongs_to :kitchen
  validates :start_at, uniqueness: { scope: :kitchen_id, message: "This kitchen is already taken" }
  validates :end_at, uniqueness: { scope: :kitchen_id, message: "This kitchen is already taken" }
end

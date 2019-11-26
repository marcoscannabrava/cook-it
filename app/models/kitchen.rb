class Kitchen < ApplicationRecord
  belongs_to :owner, foreign_key: :user_id, class_name: "User"
  has_many :bookings
  validates :city, presence: true
  validates :description, presence: true
  validates :price_per_hour, presence: true
  validates :title, presence: true
  validates_associated :users
end

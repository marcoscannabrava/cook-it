class Kitchen < ApplicationRecord
  belongs_to :owner, foreign_key: :user_id, class_name: "User"
  has_many :bookings
  validates :city, presence: true
  validates :description, presence: true
  validates :price_per_hour, presence: true
  validates :title, presence: true
  validates :photo, presence: true
  # refactor it
  # This creates a bug that forbids kitchen creation
  # validates_associated :owner
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader
end

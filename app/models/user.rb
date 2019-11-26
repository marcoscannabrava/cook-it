class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :kitchens
  has_many :bookings

  validates_format_of :email, :with => Devise::email_regexp, uniqueness: true
  validates :name, presence: true, uniqueness: true
end

class User < ApplicationRecord
  has_many :underwears
  has_many :bookings
  has_many :booked_underwears, through: :bookings, source: :underwear
  validates :address, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

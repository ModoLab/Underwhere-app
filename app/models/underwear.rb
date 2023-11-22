class Underwear < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :title, presence: true
  validates :description, presence: true
end

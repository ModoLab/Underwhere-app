class Underwear < ApplicationRecord
  belongs_to :user
  has_one :booking
  has_one_attached :photo
  validates :title, presence: true
  validates :description, presence: true

end

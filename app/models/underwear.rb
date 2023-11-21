class Underwear < ApplicationRecord
  belongs_to :user
  has_one :booking
  validates :title, presence: true
  validates :description, presence: true
end

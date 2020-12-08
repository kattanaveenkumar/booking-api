class Space < ApplicationRecord
  # model association
  has_many :bookings, dependent: :destroy

  # validations
  validates :name, presence: true

end

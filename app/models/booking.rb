class Booking < ApplicationRecord
  belongs_to :space

  validates :start_date, :end_date, presence: true

  scope :filter_by_space_id, -> (space_id) { where(space_id: space_id) }
end

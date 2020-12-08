class Booking < ApplicationRecord
  # model association
  belongs_to :space

  # validations
  validates :start_date, :end_date, presence: true

  #filters
  scope :space_id, -> (space_id) { where("space_id = ?", space_id) }

  scope :start_date, -> (start_date) { where("start_date > ? OR start_date = ?", start_date, start_date) }

end

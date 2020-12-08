require 'rails_helper'

# Test suite for the Booking model
RSpec.describe Booking, type: :model do
  # Association test
  # ensure a booking record belongs to a space record
  it { should belong_to(:space) }
  # Validation test
  # ensure columns start_date, end_date are present before saving
  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:end_date) }
end
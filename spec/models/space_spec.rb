require 'rails_helper'
# Test suite for the Space model
RSpec.describe Space, type: :model do
  # Association test
  # ensure Space model has a 1:m relationship with the Booking model

  it { should have_many(:bookings).dependent(:destroy) }
  # Validation tests
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end 
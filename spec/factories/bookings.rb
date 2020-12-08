FactoryBot.define do
  factory :booking do
    description {Faker::Alphanumeric.alphanumeric}
    start_date { Date.today+1 }
    end_date { Date.today+2 }
    space_id { SecureRandom.uuid }
  end
end
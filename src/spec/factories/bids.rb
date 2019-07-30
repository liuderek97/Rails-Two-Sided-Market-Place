FactoryBot.define do
  factory :bid do
    job
    bartender_id { Profile.first || association(:bartender_id) }
    content  { FFaker::CheesyLingo.sentence }
    approved { false }
    amount   { 1000 }
  end
end

FactoryBot.define do
  factory :job do
    employer_id { Profile.first || association(:employer_id) }
    content { FFaker::CheesyLingo.sentence }
    address { 'address' }
    amount  { 1000 }
    title   { 'title' }
  end
end

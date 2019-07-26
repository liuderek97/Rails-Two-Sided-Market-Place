FactoryBot.define do
  factory :profile do
    user { User.first || association(:user) }
    name { FFaker::Name.name }
    bio  { FFaker::CheesyLingo.sentence }
  end
end

FactoryBot.define do
  factory :review do
    title       { 'title' }
    content     { 'string' }
    star_rating { 1 }
    reviewer    { association(:profile) }
    reviewed    { association(:profile) }
  end
end

FactoryGirl.define do 

  factory :comment do
    text Faker::ChuckNorris.fact
    association :book, factory: :book
    association :user, factory: :user
  end

end
FactoryGirl.define do 

  factory :comment do
    text Faker::ChuckNorris.fact
    association :book, factory: :book
    association :author, factory: :author
  end

end
FactoryGirl.define do 

  factory :comment do
    text Faker::ChuckNorris.fact
    book
    user
  end

end
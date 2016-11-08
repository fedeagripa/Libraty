FactoryGirl.define do 

	factory :book do
		title Faker::Book.title
    year Faker::Time.between(DateTime.now - 2000, DateTime.now)
		isbn Faker::Number.number(4)
    author
	end

end
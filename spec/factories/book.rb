FactoryGirl.define do 

	factory :book do
		title Faker::Book.title
		isbn Faker::Number.number(4)
    association :author, factory: :author
	end

end
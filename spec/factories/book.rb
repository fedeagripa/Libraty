FactoryGirl.define do 

	factory :book do
		title Faker::Name.title
		isbn Faker::Number.number(4)
    association :author, factory: :author, last_name: "hololo"
	end

end
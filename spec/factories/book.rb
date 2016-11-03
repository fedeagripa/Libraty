FactoryGirl.define do 
	
	factory :book do
		title Faker::Name.title
		isbn Faker::Number.number(10)
	end

end
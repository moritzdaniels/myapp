FactoryGirl.define do
  	sequence(:email) { |n| "user#{n}@example.com"}
  	factory :user do
		email
		password "1234567890"
		first_name "Peter"
		last_name "Peters"
		admin false
	end
	factory :admin, class: User do
  		email
  		password "abcdefghi"
  		first_name "Sven"
		last_name "Svensson"
		admin true	
	end
end
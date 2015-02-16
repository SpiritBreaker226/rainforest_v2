FactoryGirl.define do
  factory :product do
  name { Faker::Company.name }
		description { Faker::Lorem.sentence }
		price_in_cents { (100..300).to_a.sample }
  end
end

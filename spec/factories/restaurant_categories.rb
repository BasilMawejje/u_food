FactoryGirl.define do
  factory :restaurant_category do
    sequence :name do |n|
      "Mycategory#{n}"
    end
    sequence :description do |n|
      "MyDescription#{n}"
    end
  end
end

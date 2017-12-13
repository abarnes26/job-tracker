FactoryBot.define do
  factory :category do
    sequence(:title) {|n| "CategoryName#{n}"}
  end
end

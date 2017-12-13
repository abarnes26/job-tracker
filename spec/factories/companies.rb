FactoryBot.define do
  factory :company do
    sequence(:name) {|n| "CompanyName#{n}"}
  end
end

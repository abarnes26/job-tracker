FactoryBot.define do
  factory :category do
    sequence(:title) {|n| "CategoryName#{n}"}
  end

  factory :admin, class: :category do
    name "AdminCategory"
  end
end

# FactoryBot.define do
#   factory :movie do
#     title "FakeMovie"
#     description "Whatever, fuck you, you'll see it anyway"
#     director
#   end
# end

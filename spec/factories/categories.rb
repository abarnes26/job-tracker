FactoryBot.define do
  factory :category do
    sequence(:title) {|n| "DirectorName#{n}"}
  end

  factory :admin, class: :director do
    name "AdminDirector"
  end
end

# FactoryBot.define do
#   factory :movie do
#     title "FakeMovie"
#     description "Whatever, fuck you, you'll see it anyway"
#     director
#   end
# end

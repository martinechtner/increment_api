FactoryBot.define do
  factory :user_increment do
    association :user, factory: :user
    current { 1 }
  end
end

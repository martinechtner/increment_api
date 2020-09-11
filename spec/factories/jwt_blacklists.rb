FactoryBot.define do
  factory :jwt_blacklist do
    jti { "MyString" }
    exp { "2020-09-10 17:22:03" }
  end
end

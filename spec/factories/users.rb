FactoryBot.define do
  factory :user do
    fullname { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    dob { "2021-02-27 21:53:29" }
    state { "MyString" }
  end
end

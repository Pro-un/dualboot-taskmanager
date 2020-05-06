FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "test#{n}@test.test"
    end

    first_name { "Ivan" }
    last_name { "Ivanov" }
    password { "123456" }
    avatar {  }
    type { "Manager" }
  end
end

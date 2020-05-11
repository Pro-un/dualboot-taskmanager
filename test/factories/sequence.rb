FactoryBot.define do
  sequence :email do |n|
    "test#{n}@test.test"
  end

  sequence :string, aliases: [:first_name, :last_name, :password] do |n|
    "string#{n}"
  end

  sequence :task, aliases: [:name, :description] do |n|
    "task#{n}"
  end

  sequence :expired_at  do |n|
    2.week.ago
  end
end

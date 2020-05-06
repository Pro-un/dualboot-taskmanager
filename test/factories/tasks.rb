FactoryBot.define do
  factory :task do
    sequence :name do |n|
      "Task#{n}"
    end

    sequence :description do |n|
      "task#{n}"
    end

    author_id { 3 }
    assignee_id { 1 }
    state {  }
    expired_at { 2.week.ago }

  end
end

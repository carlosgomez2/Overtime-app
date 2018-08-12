FactoryBot.define do
  factory :post do
    date Date.today
    rationale "Some rationale"
    overtime_request 3.5
    association :user
  end

  factory :second_post, class: Post do
    date Date.yesterday
    rationale "Random rationale"
    overtime_request 0.5
    association :user
  end

  factory :post_from_non_authorized_user, class: Post do
    date Date.yesterday
    rationale "Random rationale"
    overtime_request 1.5
    association :non_authorized_user
  end
end
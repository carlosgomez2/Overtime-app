FactoryBot.define do
  factory :post do
    date Date.today
    rationale "Some rationale"
    association :user
  end

  factory :second_post, class: Post do
    date Date.yesterday
    rationale "Random rationale"
    association :user
  end

  factory :post_from_non_authorized_user, class: Post do
    date Date.yesterday
    rationale "Random rationale"
    association :non_authorized_user
  end
end
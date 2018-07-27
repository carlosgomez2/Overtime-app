FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user, class: User do
    first_name 'carlos'
    last_name 'gomez'
    email { generate :email }
    password "123456789"
    password_confirmation "123456789"
  end

  factory :admin_user, class: AdminUser do
    first_name 'admin'
    last_name 'user'
    email { generate :email }
    password "123456789"
    password_confirmation "123456789"
  end
end

FactoryBot.define do
  factory :comment do
    comment {"テスト"}
    association :user
    association :post
  end
end

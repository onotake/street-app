FactoryBot.define do
  factory :post do
    caption {"これは画像です。"}
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    association :user
  end
end
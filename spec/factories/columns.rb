FactoryBot.define do
  factory :column do
    association :user

    name              {'test'}
    introduction      {'説明書き'}
    category_id       {1}
    part_id           {1}
  
    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    
    end
end
  
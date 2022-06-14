FactoryBot.define do
    factory :page do
        title { Faker::Lorem.words }
        account
    end
end

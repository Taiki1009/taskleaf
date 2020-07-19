FactoryBot.define do
    factory :task do
        name { 'テストをかく' }
        description { 'RSpec & Capybara & FactoryBot を準備する' }
        user
        #関連名とファクトリー名を別に書くこともできる
        # association :user, factory :admin_user 
    end
end
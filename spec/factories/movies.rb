FactoryBot.define do
  factory :movie do
    name { "teste" }
    url { "MyString" }
    user { create(:user) }
    public { false }
  end
end

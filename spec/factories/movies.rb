FactoryBot.define do
  factory :movie do
    name { "MyString" }
    url { "MyString" }
    user { nil }
    public { false }
  end
end

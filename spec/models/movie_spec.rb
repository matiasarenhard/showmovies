require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "have a valid factories" do
    expect(build(:movie)).to be_valid
  end
end

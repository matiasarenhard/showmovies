require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :name => "Name",
        :url => "Url",
        :user => nil,
        :public => false
      ),
      Movie.create!(
        :name => "Name",
        :url => "Url",
        :user => nil,
        :public => false
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

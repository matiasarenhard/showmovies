require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :name => "Name",
      :url => "Url",
      :user => nil,
      :public => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end

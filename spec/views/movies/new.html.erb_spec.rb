require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      :name => "MyString",
      :url => "MyString",
      :user => nil,
      :public => false
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[name]"

      assert_select "input[name=?]", "movie[url]"

      assert_select "input[name=?]", "movie[user_id]"

      assert_select "input[name=?]", "movie[public]"
    end
  end
end

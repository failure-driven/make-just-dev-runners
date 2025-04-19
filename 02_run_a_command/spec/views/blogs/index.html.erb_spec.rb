require "rails_helper"

RSpec.describe "blogs/index", type: :view do
  before do
    assign(:blogs, [
      Blog.create!(
        title: "Title",
        body: "MyText",
        author: "Author",
      ),
      Blog.create!(
        title: "Title",
        body: "MyText",
        author: "Author",
      ),
    ],)
  end

  it "renders a list of blogs" do
    render
    cell_selector = "div>p"
    assert_select cell_selector, text: Regexp.new("Title"), count: 2
    assert_select cell_selector, text: Regexp.new("MyText"), count: 2
    assert_select cell_selector, text: Regexp.new("Author"), count: 2
  end
end

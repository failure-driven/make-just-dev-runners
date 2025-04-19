require "rails_helper"

RSpec.describe "blogs/show", type: :view do
  before do
    assign(:blog, Blog.create!(
      title: "Title",
      body: "MyText",
      author: "Author",
    ),)
  end

  it "renders attributes in <p>", :aggregate_failures do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
  end
end

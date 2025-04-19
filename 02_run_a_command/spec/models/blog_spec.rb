# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  author     :string
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe Blog, type: :model do
  it "is valid" do
    blog = Blog.new(
      title: "the title",
      body: "the body",
      author: "the author",
    )
    expect(blog).to be_valid
  end

  it "is NOT valid without title" do
    blog = Blog.new(
      title: "",
      body: "the body",
      author: "the author",
    )
    expect(blog).not_to be_valid
  end

  it "is NOT valid without body" do
    blog = Blog.new(
      title: "the title",
      body: "",
      author: "the author",
    )
    expect(blog).not_to be_valid
  end

  it "is NOT valid without author" do
    blog = Blog.new(
      title: "the title",
      body: "the body",
      author: "",
    )
    expect(blog).not_to be_valid
  end
end

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
class Blog < ApplicationRecord
  validates :author, presence: true, allow_blank: false
  validates :body, presence: true, allow_blank: false
  validates :title, presence: true, allow_blank: false
end

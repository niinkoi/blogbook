# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  description :string(255)      not null
#  is_public   :boolean          default(TRUE), not null
#  title       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :category do
    title { "MyString" }
    description { "MyString" }
    is_public { false }
  end
end

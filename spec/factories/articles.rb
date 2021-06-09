# == Schema Information
#
# Table name: articles
#
#  id                :bigint           not null, primary key
#  content           :text(65535)      not null
#  is_public         :boolean          default(TRUE), not null
#  short_description :string(255)      not null
#  title             :string(255)      not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  category_id       :bigint
#  user_id           :bigint           not null
#
# Indexes
#
#  fk_rails_3d31dad1cc  (user_id)
#  fk_rails_af09d53ead  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :article do
    user_id { "" }
    category_id { "" }
    title { "MyString" }
    short_description { "MyString" }
    content { "MyText" }
    is_public { false }
  end
end

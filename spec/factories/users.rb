# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string(255)      not null
#  first_name :string(255)      not null
#  is_public  :boolean          default(TRUE), not null
#  last_name  :string(255)
#  username   :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#
FactoryBot.define do
  factory :user do
    username { SecureRandom.hex(3) }
    first_name { %w[Nguyen Khoi Tom].sample }
    last_name { %w[Hung Van Dinh].sample }
    email { "#{SecureRandom.hex(4)}@gmail.com" }
    is_public { true }
  end
end

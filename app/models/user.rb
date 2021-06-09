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
class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, uniqueness: true, presence: true
  validates :first_name, presence: true

  has_many :articles
  has_many :categories, through: :articles
end

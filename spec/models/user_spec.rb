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
require 'rails_helper'

RSpec.describe User, type: :model do

  describe '#valid?' do
   it 'is valid when email is unique' do
      user1 = create(:user)
      user2 = create(:user)

      expect(user2.email).not_to be user1.email
      expect(user2).to be_valid
    end

    it 'is invalid if the email is taken' do

      create(:user, email: 'nguyennk@gmail.com')

      user = User.new
      user.email = 'nguyennk@gmail.com'
      expect(user).not_to be_valid
    end

    it 'is invalid if the username is taken' do
      user = create(:user)
      another_user = create(:user)

      expect(another_user).to be_valid
      another_user.username = user.username
      expect(another_user).not_to be_valid
    end

    it "is invalid if user's first name is blank" do
      user = create(:user)
      expect(user).to be_valid

      user.first_name = ''
      expect(user).not_to be_valid

      user.first_name = nil
      expect(user).not_to be_valid
    end

    it 'is invalid if username is blank' do
      user = create(:user)
      expect(user).to be_valid

      user.username = ''
      expect(user).not_to be_valid

      user.username = nil
      expect(user).not_to be_valid
    end

    it 'is invalid if the email looks bogus' do
      user = create(:user)
      expect(user).to be_valid

      user.email = ''
      expect(user).to be_invalid

      user.email = 'foo.bar'
      expect(user).to be_invalid

      user.email = 'foo.bar#example.com'
      expect(user).to be_invalid

      user.email = 'f.o.o.b.a.r@example.com'
      expect(user).to be_valid

      user.email = 'foo+bar@example.com'
      expect(user).to be_valid

      user.email = 'foo.bar@sub.example.co.id'
      expect(user).to be_valid
    end 
  end
end

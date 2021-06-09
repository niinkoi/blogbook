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
require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

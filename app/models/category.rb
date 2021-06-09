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
class Category < ApplicationRecord
end

# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  content        :text
#  tag            :string(255)
#  user_id        :integer
#  multimedium_id :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

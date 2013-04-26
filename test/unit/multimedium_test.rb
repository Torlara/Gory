# == Schema Information
#
# Table name: multimedia
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  source     :string(255)
#  tag        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MultimediumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

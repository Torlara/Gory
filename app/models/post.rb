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

class Post < ActiveRecord::Base
  attr_accessible :content, :tag
  
  #validacje
  validates(:content, presence:true, length: {minimum: 6, maximum: 500})
  validates(:multimedium_id, presence:false)
  validates(:user_id, presence:true)
  
  #polaczenia w bazie
  belongs_to :user
  has_many :comments
  has_many :multimedia
end

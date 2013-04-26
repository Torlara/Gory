# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  author     :string(255)
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :author, :content
  
  #validacje
  validates(:author, presence:true, length: {minimum: 1})
  validates(:content, presence:true, length: {minimum: 6, maximum: 500})
  validates(:post_id, presence:true)
  
  #polaczenia w bazie
  belongs_to :post
end

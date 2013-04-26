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

class Multimedium < ActiveRecord::Base
  attr_accessible :name, :source, :tag
  
  #validacje
  validates(:name, presence:true, length: {minimum: 3})
  validates(:source, presence:true)
  
  #polaczenia w bazie
  belongs_to :post
end

# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  gender     :string(255)
#  dob        :date
#  created_at :datetime
#  updated_at :datetime
#

class Author < ActiveRecord::Base
	validates :name, presence: true
	has_many :books
	has_many :reviews, through: :books	
end

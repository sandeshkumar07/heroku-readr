# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  rating      :integer
#  description :text
#  book_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#  name        :string(255)
#

class Review < ActiveRecord::Base
  belongs_to :book
  # validates :rating, presence: true, numericality: {greater_than: 1, even: true, message: "is no good!" }
  # validates :rating, presence: true, numericality: true

  # validates :book, presence: {message: "doesnt exist"}
  # validates :book, presence: true
  
  # attr_accessible :description, :rating
end

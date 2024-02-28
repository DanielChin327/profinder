class Review < ApplicationRecord
  belongs_to :service
  belongs_to :user
  validates :rating, presence: true, numericality: {only_integer: true}, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :comment, presence: true
  validates :eng_rating, presence: true, numericality: {only_integer: true}
end

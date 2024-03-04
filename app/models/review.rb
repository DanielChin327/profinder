class Review < ApplicationRecord
  belongs_to :service
  belongs_to :user
  validates :rating, presence: true, numericality: {only_integer: true}, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :comment, presence: true
  validates :comment, length: { minimum: 5, maximum: 500 }
  validates :eng_rating, presence: true, numericality: {only_integer: true}, inclusion: { in: [1, 2, 3, 4, 5] }
end

class Review < ApplicationRecord
  belongs_to :service

  validates :rating, presence: true, numericality: {only_integer: true}
  validates :comment, presence: true
  validates :eng_rating, presence: true, numericality: {only_integer: true}
end

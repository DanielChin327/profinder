class Service < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :reviews

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :schedule, presence:  true
  validates :category, presence: true
end

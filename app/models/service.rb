class Service < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy

  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :title, presence: true
  validates :price, presence: true
  # validates :category, presence: true

end

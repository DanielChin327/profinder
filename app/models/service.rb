class Service < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy

  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :title, presence: true
  validates :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }


  # validates :category, presence: true

  paginates_per 10


end

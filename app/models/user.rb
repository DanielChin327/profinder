class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :services
  has_many :bookings
  has_many :bookmarks
  has_many :bookings_as_professional, through: :services, source: :bookings
  has_one_attached :photo
  has_many :notifications, as: :recipient, dependent: :destroy, class_name: "Noticed::Notification"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :username, length: {minimum: 3}
  validates :username, uniqueness: true

end

class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :user
  has_many :noticed_events, as: :record, dependent: :destroy, class_name: "Noticed::Event"
  has_many :notifications, through: :noticed_events, class_name: "Noticed::Notification"
  validates :start_date, presence: true
  validates :end_date, presence: true
  enum status: { pending: "pending", approved: "approved", rejected: "rejected"}, _default: :pending
  def num_of_days
    (end_date - start_date).to_i + 1
  end

end

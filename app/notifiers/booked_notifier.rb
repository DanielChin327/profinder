# To deliver this notification:
#
# Booked.with(record: @post, message: "New post").deliver(User.all)

class BookedNotifier < ApplicationNotifier
  # Add your delivery methods
  deliver_by :action_cable do |config|
    config.channel = "NotificationsChannel"
    config.stream = :some_stream
    config.message = "this is specific to action cable"
  end
  #
  # deliver_by :email do |config|
  #   config.mailer = "UserMailer"
  #   config.method = "new_post"
  # end
  #
  # bulk_deliver_by :slack do |config|
  #   config.url = -> { Rails.application.credentials.slack_webhook_url }
  # end
  #
  # deliver_by :custom do |config|
  #   config.class = "MyDeliveryMethod"
  # end
  notification_methods do
    # I18n helpers
    def message
      "test"
    end
  # Add required params
  end
  # required_param :message
end

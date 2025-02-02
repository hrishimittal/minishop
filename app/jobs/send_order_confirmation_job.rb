class SendOrderConfirmationJob < ApplicationJob
  queue_as :default

  def perform(order_id)
    OrderMailer.with(order_id: order_id).confirmation.deliver_now
  end
end

ActionMailer::Base.add_delivery_method :sendgrid, SendGrid::Mail do |settings|
  settings.api_key = ENV["SENDGRID_API_KEY"]
end

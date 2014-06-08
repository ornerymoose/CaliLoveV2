#Rails.configuration.stripe = {
#  :publishable_key => ENV['PUBLISHABLE_LIVE'],
#  :secret_key      => ENV['SECRET_LIVE']
#}

Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_LIVE'],
  :secret_key      => ENV['SECRET_LIVE']
}
 
Stripe.api_key = Rails.configuration.stripe[:secret_key]

Rails.configuration.stripe = {
  :publishable_key => 'pk_live_MuRFF8J7CUEKjVyo5P9z3S4Q',
  :secret_key      => 'sk_live_TvapFpc2EPLhXwXt9ou3TI9t'
}
 
Stripe.api_key = Rails.configuration.stripe[:secret_key]

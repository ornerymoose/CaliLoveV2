#Rails.configuration.stripe = {
 # :publishable_key => 'pk_live_MuRFF8J7CUEKjVyo5P9z3S4Q',
 # :secret_key      => 'sk_live_TvapFpc2EPLhXwXt9ou3TI9t'
#}

Rails.configuration.stripe = {
  :publishable_key => 'pk_test_scdKj66X5MepCaCHOcJZAJ4l',
  :secret_key      => 'sk_test_sEhQ2X4ZfeI26rhq8ufb8OuM'
}
 
Stripe.api_key = Rails.configuration.stripe[:secret_key]

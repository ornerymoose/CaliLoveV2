ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "calove.help",
  :password             => "Keylimepie66",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
           
ActionMailer::Base.default_url_options[:host] = "www.calove.ca"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?

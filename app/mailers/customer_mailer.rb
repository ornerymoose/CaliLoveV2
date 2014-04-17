class CustomerMailer < ActionMailer::Base
  default from: "calove.help@gmail.com"

  def registration_confirmation(user)
    @customer = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user}", :subject => "Your California Love Order")
  end
end

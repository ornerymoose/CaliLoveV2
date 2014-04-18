class CustomerMailer < ActionMailer::Base
  default from: "calove.help@gmail.com"

  #def registration_confirmation(user)
  def received(order)
  	@cart = order
    #@customer = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail to: "#{@customer.email}"
    #mail(:to => "#{user}", :subject => "Your California Love Order")
  end

  # def email_sent(user)
  # 	@customer = user
  # 	mail(:to => "#{user}", :subject => "Your California Love Order")
  # end
end

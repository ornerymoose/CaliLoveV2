class CustomerMailer < ActionMailer::Base
  default from: "calove.help@gmail.com"

  #def registration_confirmation(user)
  def received(order, email)
  	@cart = order
  	@customer = email
    mail to: email
  end
end

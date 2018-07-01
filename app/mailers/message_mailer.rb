class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
 
  def contact_me(message)
   @body = message.name + "\t / \t" + message.email + "\t / \t" + message.body
   
   mail to: "ariana.marean@gmail.com", from: message.email
  end
 
end

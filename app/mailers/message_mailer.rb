class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
 
  def contact_me(message)
   @body = message.name + "\t /PHONE \t" +  message.phone + "\t /EMAIL \t" + message.email + "\t /MESSAGE \t" + message.body 
   
   mail to: "marean.2@buckeyemail.osu.edu", from: message.email
  end
 
end

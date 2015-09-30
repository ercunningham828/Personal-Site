class MessageMailer < ActionMailer::Base

  default from: "Emily <Emily@EmilyRoseCunningham.com>"
  default to: "Emily <ernoonan@gmail.com>"

  def new_message(message)
    @message = message
    
    mail subject: "New Email from EmilyRoseCunningham.com"
  end

end

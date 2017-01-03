class MessageNotifierMailer < ApplicationMailer

  def new_msg(message_id)
    message = Message.find(message_id)
    mail({
           to: ENV['DEFAULT_EMAIL_RECIPIENT'],
           bcc: 'anthonysherwinchua+foncyandkat@gmail.com',
           from: message.email,
           subject: "Message from #{message.name}",
           body: message.body
         })
  end
end

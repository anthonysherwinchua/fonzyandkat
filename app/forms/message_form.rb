class MessageForm < BaseForm

  attr_accessor :message

  def initialize(params = {})
    @message = Message.new(params[:message])
  end

  def save
    if @message.save
      MessageNotifierMailer.new_msg(@message.id).deliver_later
    end
  end

end

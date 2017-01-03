class MessageForm < BaseForm

  attr_accessor :message

  def initialize(params = {})
    @message = Message.new(params[:message])
  end

  def save
    if @message.save

    end
  end

end

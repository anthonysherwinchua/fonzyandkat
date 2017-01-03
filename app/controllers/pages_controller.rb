class PagesController < ApplicationController

  def index
    @photos = Image.all
    @form = MessageForm.new
  end

  def message
    @form = MessageForm.new(form_params)
    @form.save
  end

  private

  def form_params
    params.require(:message_form).permit(message: [:name, :email, :body])
  end

end

class PagesController < ApplicationController

  def index
    @photos = Image.all
  end

end

class CnController < ApplicationController
  def home
    @title = "Home"
  end

  def work
    @title = "Work"
  end

  def photo
    @title = "Photo"
  end

  def video
    @title = "Video"
  end

  def price
    @title = "Price"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end
end

class CnController < ApplicationController
  def home
    @title = "Home"
  end

  def gallery
    @title = "Gallery"
  end

  def photography
    @title = "Photography"
  end

  def video
    @title = "Video"
  end

  def bridal_dress
    @title = "Bridal Dress"
  end

  def package
    @title = "Package"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end
end

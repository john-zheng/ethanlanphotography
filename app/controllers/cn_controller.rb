class CnController < ApplicationController
  def home
    @title = "Home"
  end

  def gallery
    @title = "Gallery"
    # @images_full = Dir.glob("app/assets/images/gallery/full/*.jpg").map{|file| file.split("/").last}.sort_by {|file_name| file_name.to_i}
    @images_full = Dir.glob("app/assets/images/gallery/full/*.jpg").map{|file| file.split("/").last}
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
    @inquiry = Inquiry.new
  end
    
  def message
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.deliver
      render :thankyou
    else
      render :contact
    end
  end

end

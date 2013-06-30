# app/models/inquiry.rb
 
class Inquiry
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  include ActionView::Helpers::TextHelper
  
  attr_accessor :name, :phone, :email, :message, :nickname
  
  validates :name, 
            :presence => true
  
  validates :email,
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  
  #validates :message,
  #          :length => { :minimum => 3, :maximum => 1000 }

  validates :nickname, 
            :format => { :with => /^$/ }
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def deliver
    return false unless valid?
    Pony.mail({
      :to => 'zheng8001@gmail.com',
      :from => %("#{name}" <#{email}>),
      :reply_to => email,
      :subject => "Ethan Lan Photography - New Message",
      :body => "You have a new enquiry.\n\nName: #{name}\nPhone: #{phone}\nEmail: #{email}\nMessage: #{message}\n\n",
    
    })
  end
      
  def persisted?
    false
  end
end
class Address < ActiveRecord::Base
  attr_accessible :city, :country, :street, :zip, :region, :contact_id
  validates :street, :zip, :presence => true


  belongs_to :contact, :counter_cache => true

  
end

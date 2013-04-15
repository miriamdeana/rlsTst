class Contact < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone
  validates :first_name, :last_name, :presence => true 
  validates :email, :uniqueness => true
  has_many :addresses
  
  scope :without_addresses, where(address_count: 0)

end

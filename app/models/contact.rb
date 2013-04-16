class Contact < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone, :group_id
  validates :first_name, :last_name, :presence => true 
  validates :email, :uniqueness => true
  has_many :addresses
  has_and_belongs_to_many :groups
  scope :without_addresses, where(addresses_count: 0)

  def full_name
    "#{first_name} #{last_name}"
  end

end

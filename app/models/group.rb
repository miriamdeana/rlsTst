class Group < ActiveRecord::Base
  attr_accessible :name, :contact_ids
  has_and_belongs_to_many :contacts
end

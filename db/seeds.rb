require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Country.delete_all
# open("http://openconcept.ca/sites/openconcept.ca/files/country_code_drupal_0.txt") do |countries|
#   countries.read.each_line do |country|
#     code, name = country.chomp.split("|")
#     Country.create!(:country => name, :code => code)
#   end
# end

[{last: 'Williams', first: 'Miriam', email: 'mdw@who.com', phone:'555-555-5555'}, 
{last: "Xollins", first: "Charles", email: "cmx@who.com", phone:"123-456-7890"},
{last: "Grimes", first: "Brian", email: "bkg@who.com", phone:"223-455-7898"},
{last: "Man", first: "Space", email: "spm@who.com", phone:"527-564-0789"}

].each_with_index do |contact, i|
	last = contact[:last]
	first = contact[:first]
	email = contact[:email]
	phone = contact[:phone]
  	Contact.find_or_create_by_email(:last_name => last, :first_name => first, :email => email, :phone => phone)
end


# [{street: "123 Open Rd.", city: "White Blossom", country: "US", zip: "56789", contact_id: "#{rand(1..4)}"},
# {street: "233 Open Rd.", city: "Cherryville", country: "US", zip: "12345", contact_id: "#{rand(1..4)}"},
# {street: "5678 Open Rd.", city: "Lizard Lick", country: "US", zip: "23456", contact_id: "#{rand(1..4)}"},
# {street: "445 Open Rd.", city: "Carrietown", country: "US", zip: "34567", contact_id: "#{rand(1..4)}"},
# {street: "3472 Berachah Valley Rd.", city: "Winterville", country: "US", zip: "27858", contact_id: "#{rand(1..4)}"},
# {street: "AB-387", city: "CheongPyeong", country: "SK", zip: "82-000", contact_id: "#{rand(1..4)}"},
# {street: "3 Town Lake Pkwy., Apt. 4B", city: "Jacksonville", country: "US", zip: "19112", contact_id: "#{rand(1..4)}"}
# ].each do |address|
# 	Address.find_or_create_by_street_and_contact_id(:street => address[:street], :city => address[:city], :country => address[:country], :zip => address[:zip], :contact_id => address[:contact_id])
# end



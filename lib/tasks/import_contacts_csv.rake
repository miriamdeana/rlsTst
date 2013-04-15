require 'csv'


desc "Imports a CSV file into an ActiveRecord table"
task :import_contacts_csv, [:filename] => :environment do    
    CSV.foreach('lib/tasks/contacts.csv', :headers => true) do |row|
      contact = Contact.find_or_create_by_email({:email => row.to_hash["email"], :last_name => row.to_hash["last_name"], :first_name => row.to_hash["first_name"], :phone => row.to_hash["phone"]})
      puts "here's the hash: #{row.to_hash}"
      unless row.to_hash["street"] == nil #&& row.to_hash[zip]
      	puts "here we go!"
      	ID = contact.id
      	puts ID
      	Address.create({:contact_id => ID, :street => row.to_hash["street"], :city => row.to_hash["city"], :zip => row.to_hash["zip"], :region => row.to_hash["region"], :country => row.to_hash["country"]})
      	
      end
    end
end
require 'spec_helper'

describe 'Contacts' do
	it 'should validate names' do
		visit 'http://localhost:3000/contacts'
		page.should have_link("New Contact")
		page.click_link("New Contact")
		fill_in 'contact_email', :with => 'jojo@joe.com'
		fill_in 'contact_phone', :with => '1234567890'
		page.click_button("Create Contact")	
		#page.find(".field_with_errors")("First name")
		#page.should have_css("#contact_last_name.field_with_errors")
		page.should have_css ("#error_explanation")
	end
end

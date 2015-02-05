require('rspec')
require('contact')
require('phone')
require('pry')

describe(Contact) do
	 before() do
  	Contact.clear()
   end

	describe(:contact_name) do
	 it("returns the name of the contact") do
	  new_contact = Contact.new("Richard Rethemeyer")
	  new_contact.save()
	  expect(new_contact.contact_name()).to(eq("Richard Rethemeyer"))
	 end
	end

	describe("#save") do
	 it("pushes a new contact into the contacts list")	do
	  new_contact = Contact.new("Richard Rethemeyer")
		new_contact.save()
		expect(Contact.all()).to(eq([new_contact]))
	 end
	end

	describe(".find_contact") do
	 it("will search to the class 'Contact' to return a contact")do
	  look_for_contact=Contact.new(["Richard Rethemeyer"])
	  look_for_contact.save()
	  expect(Contact.find_contact(look_for_contact.id())).to(eq(look_for_contact))
	 end
	end

	describe(".all") do
	 it("is empty at first") do
		expect(Contact.all()).to(eq([]))
	 end
	end

	describe(".clear") do
	 it("empties out all of the saved words") do
	 	Contact.new("Richard Rethemeyer").save()
		Contact.clear()
		expect(Contact.all()).to(eq([]))
	 end
	end

end

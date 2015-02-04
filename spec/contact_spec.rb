require('rspec')
require('contacts')
require('phone')
require('pry')

describe(Contacts) do
	 before() do
  	Contacts.clear()
   end

	describe(:contact_name) do
	 it("returns the name of the contact") do
	  new_contact = Contacts.new("Richard Rethemeyer")
	  new_contact.save()
	  expect(new_contact.contact_name()).to(eq("Richard Rethemeyer"))
	 end
	end

	describe("#save") do
	 it("pushes a new contact into the contacts list")	do
	  new_contact = Contacts.new("Richard Rethemeyer")
		new_contact.save()
		expect(Contacts.all()).to(eq([new_contact]))
	 end
	end

	describe(".find_contact") do
	 it("will search to the class 'Contacts' to return a contact")do
	  look_for_contact=Contacts.new(["Richard Rethemeyer"])
	  look_for_contact.save()
	  expect(Contacts.find_contact(look_for_contact.id())).to(eq(look_for_contact))
	 end
	end

	describe(".all") do
	 it("is empty at first") do
		expect(Contacts.all()).to(eq([]))
	 end
	end

	describe(".clear") do
	 it("empties out all of the saved words") do
	 	Contacts.new("Richard Rethemeyer").save()
		Contacts.clear()
		expect(Contacts.all()).to(eq([]))
	 end
	end

end

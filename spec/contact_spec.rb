require('rspec')
require('contacts')
require('phone')
require('pry')

describe(Contacts) do 
	describe(:name) do
		it("returns the name of the contact") do
			new_contact = CD.new("Richard Rethemeyer", "4159900464")
			new_contact.save()
			expect(new_contact.name()).to(eq("Richard Rethemeyer"))
		end
	end
	describe(:phone_number)	do
		it("returns a phone number")do
			new_contact = CD.new("Richard Rethemeyer", "4159900464")
			new_contact.save()
			expect(new_contact.phone_number()).to(eq("4159900464"))
		end
	end
	describe("#save") do
		it("pushes a new contact into the contacts list")	do
		 new_contact = Contacts.new("Michael Jackson", "Thriller")
			expect(new_contact.save()).to(eq([new_contact]))	
		end
	end
	describe(".find_contact") do
		it("will search to the class 'Contacts' to return a contact")do
		look_for_contact=Contacts.new("Richard Rethemeyer", "4159900464")
		look_for_contact.save()
			expect(Contacts.find_contact(look_for_contact.name())).to(eq(look_for_contact))
		end
	end
	describe(".all") do
		it("is empty at first") do
			expect(Contacs.all()).to(eq([]))
		end
	end
	 describe(".clear") do
		it("empties out all of the saved words") do
			Contacts.new("Richard Rethemeyer", "4159900464").save()
			Contacts.clear()
			expect(Contacts.all()).to(eq([]))
		end
	end
end
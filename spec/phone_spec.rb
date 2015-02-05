require('rspec')
require('contact')
require('phone')
require('pry')

describe(Phone) do
  before() do
    Phone.clear()
  end

  describe(:phone_number)	do
    it("returns a phone number")do
      new_contact = Phone.new("Richard Rethemeyer","work","4159900464")
      new_contact.save()
      expect(new_contact.phone_number()).to(eq("4159900464"))
    end
  end

  describe(:name)	do
    it("returns a Contact name")do
      new_contact = Phone.new("Richard Rethemeyer","work", "4159900464")
      new_contact.save()
      expect(new_contact.name()).to(eq("Richard Rethemeyer"))
    end
  end

  describe(:type)	do
    it("returns a Contact name")do
      new_contact = Phone.new("Richard Rethemeyer","work", "4159900464")
      new_contact.save()
      expect(new_contact.type()).to(eq("work"))
    end
  end

  describe(".find_contact") do
    it("will search to the class 'Phone' to return a contact")do
      look_for_contact  = Phone.new("Richard Rethemeyer","work", "4159900464")
      look_for_contact.save()
      expect(Phone.find_contact(look_for_contact.name())).to(eq(look_for_contact))
    end
  end

  describe(".find_type") do
    it("will search to the class 'Phone' to return a type")do
      look_for_contact  = Phone.new("Richard Rethemeyer","work", "4159900464")
      look_for_contact.save()
      expect(Phone.find_type(look_for_contact.type())).to(eq(look_for_contact))
    end
  end

  describe(".find_number") do
    it("will search to the class 'Phone' to return a number")do
      look_for_contact = Phone.new("Richard Rethemeyer","work", "4159900464")
      look_for_contact.save()
      expect(Phone.find_number(look_for_contact.phone_number())).to(eq(look_for_contact))
    end
  end
end

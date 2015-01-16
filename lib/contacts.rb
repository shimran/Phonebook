class Contacts
	
	@@contacts = []

	define_method(:initialize) do |name, phone_number|
		@name	=	name
		@phone_number = phone_number
	end

	define_method(:phone_number) do
		@phone_number
	end

	define_method(:name) do
		@name	
	end


	define_method(:save) do
		@@contacts.push(self)
	end

	define_singleton_method(:all) do
		@@contacts
	end

	define_singleton_method(:find_contact) do |search_for_contact|
		found_countact	=	nil
		@@contacts.each() do |contact|
			if contact.name() == search_for_contact
				found_countact = contact
			end
		end
		found_countact
	end
	define_singleton_method(:clear) do 
		@@contacts = []
	end

end
class Contact
	@@contacts = []
		define_method (:initialize) do |contact_name|
			@contact_name = contact_name
			@phone_lists = []
			@id = @@contacts.length().+1
		end

		define_method(:contact_name) do
			@contact_name
		end

		define_method(:phone_lists) do
			@phone_lists
		end

		define_method(:add_phone_lists) do |phones|
			@phone_lists.push(phones)
		end

		define_method(:id) do
   		@id
   	end

		define_method(:add_contact) do |phones|
			@phone_list.push(phones)
		end

		define_method(:id) do
			@id
		end

		define_method(:save) do
			@@contacts.push(self)
		end

		define_singleton_method(:all) do
			@@contacts
		end

		define_singleton_method(:clear) do
			@@contacts = []
		end

		define_singleton_method(:find_contact) do |search_contacts|
		found_contact = nil
			@@contacts.each() do |contact|
				if contact.id() == search_contacts
					found_contact = contact
				end
			end
		found_contact
		end
end

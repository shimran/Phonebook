class Phone

	@@phones = []

	define_method(:initialize) do |name, type, phone_number|
		@name	=	name
		@type = type
		@phone_number = phone_number
		@id = @@phones.length().+(1)
	end

	define_method(:phone_number) do
		@phone_number
	end

	define_method(:name) do
		@name
	end

	define_method(:type) do
		@type
	end

	define_method(:id) do
    @id
  end

	define_method(:save) do
		@@phones.push(self)
	end

	define_singleton_method(:all) do
		@@phones
	end

	define_singleton_method(:find_contact) do |search_for_name|
		found_name	=	nil
		@@phones.each() do |phone|
			if phone.name() == search_for_name
				found_name = phone
			end
		end
		found_name
	end

	define_singleton_method(:find_type) do |search_for_type|
		found_type	=	nil
		@@phones.each() do |phone|
			if phone.type() == search_for_type
				found_type = phone
			end
		end
		found_type
	end

	define_singleton_method(:find_number) do |search_for_phone_number|
		found_phone_number	=	nil
		@@phones.each() do |phone|
			if phone.phone_number() == search_for_phone_number
				found_phone_number = phone
			end
		end
		found_phone_number
	end

	define_singleton_method(:clear) do
		@@phones = []
	end

end

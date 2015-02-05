require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require('./lib/phone')
require('./lib/contact')
require('pry')


get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post('/contacts') do
  @contact_name = params.fetch('contact_name')
  Contact.new(@contact_name).save()
  @contacts = Contact.all()
  erb(:index)
end

post('/phone') do
  name = params.fetch('name')
  type = params.fetch('type')
  phone_number = params.fetch('phone_number')
  @phone = Phone.new(name,type,phone_number)
  @phone.save()
  @contact = Contact.find_contact(params.fetch('contact_id').to_i())
  @contact.add_phone_lists(@phone)
  erb(:contacts)
end

get('/phone/:id') do
  @phone = Phone.find(params.fetch('id'))
  erb(:phone)
end

get('/contacts/:id') do
  @contact = Contact.find_contact(params.fetch('id').to_i())
  erb(:contacts)
end

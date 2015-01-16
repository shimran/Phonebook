  require('sinatra')
  require('sinatra/reloader')
  also_reload("lib/**/*.rb")
  require('./lib/phone')
  require('./lib/contacts')


  get('/') do
    @contacts =  Contacts.all()
    erb(:index)
  end

  post('/contacts') do
    contact_name = params.fetch('contact_name')
    Contacts.new(contact_name).save()
    @contact = Contacts.all()
    erb(:index)
  end

  post('/cds') do
    name = params.fetch('name')
    type = params.fetch('type')
    phone_number= params.fetch('phone_number')
    @cd = Phone.new(name,type,phone_number)
    @cd.save()
    @artist = Artist.find(params.fetch('artist_id').to_i())
    @artist.add_album(@cd)
    erb(:artist)
  end

  get('/cds/:id') do
    @cd = CD.find(params.fetch('id'))
    erb(:cd)
  end

  get('/artists/:id') do
    @artist = Artist.find(params.fetch('id').to_i())
    erb(:artist)
  end

require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/phone')
require('./lib/contact')
require('./lib/address')
require('pry')

get('/') do
  erb(:index)
end

get('/contacts/new') do
  erb(:contacts_form)
end

get('/contacts') do
  @contacts = Contact.all
  erb(:contacts)
end

post('/contacts') do
  last_name = params.fetch('last_name')
  first_name = params.fetch('first_name')
  birth_month = params.fetch('birth_month')
  Contact.new(last_name, first_name, birth_month).save()
  @contacts = Contact.all
  erb(:success)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch('id').to_i)
  erb(:contact)
end

get('/contacts/:id/addresses/new') do
    @contact = Contact.find(params.fetch('id').to_i())
    erb(:contact_address_form)
end

get('/contacts/:id/phones/new') do
    @contact = Contact.find(params.fetch('id').to_i())
    erb(:contact_phones_form)
end

post('/addresses') do
  city = params.fetch('city')
  state = params.fetch('state')
  zip = params.fetch('zip')
  type = params.fetch('type')
  @address = Address.new(city, state, zip, type)
  @address.save()
  @contact = Contact.find(params.fetch('contact_id').to_i())
  @contact.add_address(@address)
  erb(:success)
end

post('/phones') do
  area_code = params.fetch('area_code')
  number = params.fetch('number')
  type = params.fetch('type')
  @phone = Phone.new(area_code, number, type)
  @phone.save()
  @contact = Contact.find(params.fetch('contact_id').to_i())
  @contact.add_phone(@phone)
  erb(:success)
end

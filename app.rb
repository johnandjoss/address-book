require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/phone')


get('/') do
  erb(:index)
end

require 'sinatra'
require 'data_mapper'
DataMapper.setup(
  :default,
  'mysql://root@localhost/people')
# 'protocol://username:password@ip_address/database 

#127.0.0.1
# class DataMapper
#   module 
#   end
#   module
#   end

class Contact
  include DataMapper::Resource

  property :id, Serial #mysql ALWAYS requires an id
  property :first_name, String
  property :last_name, String
  property :email, String
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @contacts = Contact.all
erb :index, layout: :awesome_default_layout
end

get '/create_contact' do
  erb :create_contact,layout: :awesome_default_layout
end


get '/edit_contact/:id' do
  erb :edit_contact, :awesome_default_layout
end

put '/edit_contact/:id' do
  @contact = Contact.get params[:id]
end

post '/create_contact' do
  puts "blahblahblah"
  erb :create_contact,layout: :awesome_default_layout
end

delete '/delete' do
end



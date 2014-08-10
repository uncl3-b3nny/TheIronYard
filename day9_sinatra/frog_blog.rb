require 'sinatra'
require 'data_mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/frogs')

class Frog
  include DataMapper::Resource
  property :id, Serial
  property :user_name, String
  property :password, String
  property :blog, Text, :lazy => false
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @frogs = Frog.all
erb :outdex, layout: :frog_layout
end

get '/create_a_frog' do
  erb :create_a_frog, layout: :frog_layout
end

post '/create_a_frog' do
  @frogs = Frog.create params[:frog]
  redirect to ('/')
end

get '/show_frog/:id' do
  @frogs = Frog.get params[:id]
  erb :show_frog, layout: :frog_layout
end

get '/edit_a_frog/:id' do
  @frogs = Frog.get params[:id]
  erb :edit_a_frog, layout: :frog_layout
end

put '/edit_a_frog/:id' do
  p params
  @frogs = Frog.get params[:id]
  @frogs.update params[:frog]
  redirect to("/")
end

delete '/delete_a_frog/:id' do
  @frogs = Frog.get params[:id]
  @frogs.destroy
  redirect to("/")
end


require 'sinatra'
require 'sinatra/reloader'
require './cipher.rb'

get '/' do
  arg = params['phrase']
  key = params['key']
  message = cipher(arg, key)
  erb :index, :locals => { :message => message }, layout: :main
end

get '/clear' do
  redirect to('/')
end

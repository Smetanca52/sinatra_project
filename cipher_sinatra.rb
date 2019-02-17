require 'sinatra'
require 'sinatra/reloader'
require './cipher.rb'

get '/' do
  arg = params['phrase']
  key = params['key']
  clear = params['clear']
  redirect to '/' unless clear.nil?
  message = cipher(arg, key)
  erb :index, :locals => { :message => message }
end

require 'sinatra'
require 'sinatra/namespace'
require 'json'

get '/' do
  "Hello World!"
end

namespace '/api' do
  get '/curricula' do
    content_type :json

    File.read('data/curricula.json')
  end
end

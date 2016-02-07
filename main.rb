require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/cross_origin'

configure do
  enable :cross_origin
end

get '/' do
  "Hello World!"
end

namespace '/api' do
  before { content_type :json }

  get '/curricula' do
    File.read('data/curricula.json')
  end

  get '/curricula/:code' do
    begin
      File.read("data/curricula/#{params[:code]}.json")
    rescue
      status 404 # Not found
      body({ error: "Could not find any curriculum with code #{params[:code]}" }.to_json)
    end
  end
end

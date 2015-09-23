require 'rubygems'
require 'sinatra'

get '/' do
    "hello world"
end

get '/:name' do |name|
  @name = name
  erb :name
end

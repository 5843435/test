require 'rubygems'
require 'sinatra'

helpers do
    def strong(s)
        "<strong>#{s}</strong>"
    end 
end

get '/' do
    "hello world"
end

get '/:name' do |name|
  @name = name
  erb :name
end

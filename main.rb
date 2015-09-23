require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "./bbs.db"
)

class Comment < ActiveRecord::Base
end 

helpers do
    def strong(s)
        "<strong>#{s}</strong>"
    end 
end

get '/' do
  @comments = Comment.order("id desc").all
  erb :index
end

get '/:name' do |name|
  @name = name
  @comments = Comment.order("id desc").all
  erb :name
end

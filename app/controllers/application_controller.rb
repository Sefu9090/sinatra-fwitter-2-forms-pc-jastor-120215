require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    Tweet.new("saul","im cool")
    Tweet.new("sergio","i swallow")
    Tweet.new("astor","get to work")
    @tweets = Tweet.all
    erb :index 
  end

end

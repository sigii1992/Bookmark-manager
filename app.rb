require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end



  run! if app_file == $0
end
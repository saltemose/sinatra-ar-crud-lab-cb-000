
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do
    @post = Post.new(params)
    redirect '/posts'
  end

  post '/posts' do

    erb :index
  end
end


require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do
    Post.new(params)
    erb :new
  end

  get '/posts' do
    @

  post '/posts' do
    @post_name = params[:name]
    @post_content = params[:content]
    erb :index
  end

  get '/sh'
end

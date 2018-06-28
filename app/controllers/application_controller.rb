
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    @post = Post.create(params)
    erb :index
  end

  get '/posts' do
    @posts = Post.all
    erb :index
  end


  get '/posts/:id' do
    @post = Post.find_by_id(params[:id])
    erb :show
  end

  get '/posts/:id/edit' do
    @post = params[:id]
    erb :edit
  end

  delete '/article/:id' do
  @article_object = Article.delete(params[:id])
  redirect to("/")
end

end


require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  ### This isn't needed, except to pass to the test for the redirect ###
  get '/' do
    redirect to '/articles'
  end

  ### This is my index ###
  get '/articles' do
    @articles = Article.all
    erb :index  
  end
  
  ### This is my new ###
  get '/articles/new' do
    @article = Article.new
    erb :new
  end

  ### This is my create ###
  post "/articles" do
    @article = Article.create(params)
    redirect to "/articles/#{ @article.id }"
  end

  ### This is my show ###
  get "/articles/:id" do
    @article = Article.find(params[:id])
    erb :show
  end

  ### This is my edit ###
  get "/articles/:id/edit" do
    @article = Article.find(params[:id])
    erb :edit
  end

  ### This is my update ###
  patch "/articles/:id" do
    @article = Article.find(params[:id])
    @article.update(params[:article])
    redirect to "/articles/#{ @article.id }"
  end

  ### This is my delete ###
  delete "/articles/:id" do
    Article.destroy(params[:id])
    redirect to "/articles"
  end


end

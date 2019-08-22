
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/articles' do
    @articles = Article.all
    erb :'articles/index'
  end 
  get '/articles/new' do
    erb :'articles/new'
  end

  get '/articles/:id/edit' do
    get_article_by_id
    
    erb :'articles/edit'
  end
  
  get '/articles/:id' do
    get_article_by_id

    erb :'articles/show'
  end

  post '/articles' do
    @new_article = Article.create(params)

    redirect "/articles/#{@new_article.id}"
  end
  

  patch '/articles/:id' do
    get_article_by_id
    @article.update(params[:article])
    
    redirect "/articles/#{@article.id}"
  end 

  delete '/articles/:id' do
    get_article_by_id
    @article.destroy

    redirect '/articles'
  end

private
  def get_article_by_id
    @article = Article.find_by_id(params[:id])
  end
end

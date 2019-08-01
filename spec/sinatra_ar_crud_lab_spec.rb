##require 'spec_helper'
##
#d#escribe "Magazine App" do
  ##let(:article_title) { "Hello World" }
#  #let(:article_content) { "This is my first article!!!" }
##
  #before do
    #@article1 = Article.create(:title => article_title, :content => #article_content)
    #@article2 = Article.create(:title => "second article", :content => "I'm# #a really good writer")
#  #end
##
#  #describe "Create Action" do
##
    #i#t "creates a new article" do
#      #visit '/articles/new'
##
      ##fill_in :title, :with => "my favorite article"
#      #fill_in :content, :with => "content!!!!"
##
#      #page.find(:css, "[type=submit]").click
##
      ##expect(Article.all.count).to eq(3)
    #  #expect(Article.last.title).to eq("my favorite article")
#    #end
##
    #i#t "redirects to '/articles/:id'" do
#      #visit '/articles/new'
##
      ##fill_in :title, :with => "an article"
#      #fill_in :content, :with => "content content content content content"
##
#      #page.find(:css, "[type=submit]").click
##
      ##expect(page.current_path).to eq("/articles/#{Article.last.id}")
      #expect(page.body).to include("content content content content# content")
#    #end
##
#  #end
##
  #d#escribe "Read Action " do
    #d#escribe 'index action' do
      #i#t 'responds with a 200 status code' do
        ##get "/articles"
      #  #expect(last_response.status).to eq(200)
#      #end
##
      #i#t "displays all the articles" do
        ##get "/articles"
        ##expect(last_response.body).to include(article_title)
      #  #expect(last_response.body).to include(@article2.title)
    #  #end
#    #end
##
    #d#escribe 'show action' do
      #i#t 'show page responds with a 200 status code' do
        ##get "/articles/#{@article1.id}"
      #  #expect(last_response.status).to eq(200)
#      #end
##
      #i#t "show page displays the article's title" do
        ##get "/articles/#{@article1.id}"
      #  #expect(last_response.body).to include(article_title)
#      #end
##
      #i#t "show page displays the article's content" do
        ##get "/articles/#{@article1.id}"
      #  #expect(last_response.body).to include(article_content)
    #  #end
#    #end
##
##
#  #end
##
##
#  #describe "update action" do
##
##
    #i#t 'responds with a 200 status code' do
      ##get "/articles/#{@article2.id}/edit"
    #  #expect(last_response.status).to eq(200)
#    #end
##
    #i#t 'displays the existing object in the edit form' do
      ##visit "/articles/#{@article2.id}/edit"
      ##expect(page.body).to include("#{@article2.title}")
#      #expect(page.body).to include("#{@article2.content}")
##
#    #end
##
    #i#t "saves edits to an article" do
      ##visit "/articles/#{@article2.id}/edit"
      ##fill_in :title, :with => "Second Article!!"
#      #fill_in :content, :with => "this is the best article ever written"
##
      ##page.find(:css, "[type=submit]").click
      ##expect(Article.all.count).to eq(2)
    #  #expect(Article.last.title).to eq("Second Article!!")
#    #end
##
    #i#t "redirects to '/articles/:id'" do
      ##visit "/articles/#{@article2.id}/edit"
#      #fill_in :content, :with => "this is even better than the last"
##
      ##page.find(:css, "[type=submit]").click
      ##expect(page.current_path).to eq("/articles/#{@article2.id}")
    #  #expect(page.body).to include("this is even better than the last")
#    #end
##
    #i#t "submits the form via a patch request" do
      #visit "/articles/#{@article2.id}/edit"
      #expect(find("[name=_method]", :visible => false).value).to match(#/#patch/i)
#    #end
##
#  #end
##
#  #describe "delete action" do
##
    #i#t 'responds with a 200 status code' do
      ##get "/articles/#{@article2.id}"
    #  #expect(last_response.status).to eq(200)
#    #end
##
    #i#t "deletes an article from the database" do
      ##visit "/articles/#{@article2.id}"
      ##page.find(:css, "form [type=submit]").click
      ##expect(Article.all.count).to eq(1)
    #  #expect(Article.last.title).to eq("Hello World")
#    #end
##
    #i#t "submits the form via a delete request" do
      #visit "/articles/#{@article2.id}"
      #expect(find("[name=_method]", :visible => false).value).to match(#/#delete/i)
#    #end
##
#  #end
##
##
##
##
##
##
#end

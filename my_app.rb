require "sinatra"
class MyApp < Sinatra::Base

  set :public_folder => "public", :static => true

  get "/" do
    erb :index
  end

  get "/team" do
    erb :team
  end

  get "/product" do
    erb :product
  end

  get "/contact" do
    erb :contact
  end

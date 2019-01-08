require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    erb :'hello'
  end

  # Code your final two routes here:

  get '/goodbye' do

    "Goodbye danny!"

  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    erb :'goodbye'
  end

  get '/multiply/:num1/:num2' do
    @num1= params[:num1].to_i
    @num2= params[:num2].to_i
    erb :'multiply'
  end

end

require 'sinatra'
require_relative 'lib/price_up.rb'

class PriceUpApp < Sinatra::Base

  get '/' do
    "Hello"
  end

  get '/calculator' do
    "Calculator goes here"
  end

end

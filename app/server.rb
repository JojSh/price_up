class PriceUpApp < Sinatra::Base

  enable :sessions

  get '/' do
    redirect '/calculator'
  end

end

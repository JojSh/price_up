class PriceUpApp < Sinatra::Base

  enable :sessions

  get '/' do
    "Hello"
  end

  get '/calculator' do
    erb :calculator
  end

  post '/calculator' do
    costs = params[:costs].to_i
    time  = params[:minutes].to_i
    wholesale_price = params[:wholesale_price].to_f

    $wp_result = PriceUp.new.wholesale(costs, time)
    $rrp_result = PriceUp.new.retail(wholesale_price)
    redirect '/calculator'
  end

end

class PriceUpApp < Sinatra::Base

  enable :sessions

  get '/' do
    redirect '/calculator'
  end

  get '/calculator' do
    @wp_result = session[:wp_result]
    @rrp_result = session[:rrp_result]
    erb :calculator
  end

  post '/calculator' do
    costs = params[:costs].to_i
    time  = params[:minutes].to_i
    wholesale_price = params[:wholesale_price].to_f

    session[:wp_result] = PriceUp.new.wholesale(costs, time)
    session[:rrp_result] = PriceUp.new.retail(wholesale_price)
    redirect '/calculator'
  end

end

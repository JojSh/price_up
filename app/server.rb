require 'pry'

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
    rate_per_min = params[:rate_per_min] ||= "0.34"
    rate_per_min == "" ? rate_per_min = 0.34 : rate_per_min = rate_per_min.to_f
    wholesale_price = params[:wholesale_price].to_f

    calc = Calculator.new
    calc.set_rate_per_min(rate_per_min)

    session[:wp_result] = '%.2f' % calc.wholesale(costs, time)
    session[:rrp_result] = '%.2f' % calc.retail(wholesale_price)
    redirect '/calculator'
  end

end

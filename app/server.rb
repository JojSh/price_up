class PriceUpApp < Sinatra::Base

  enable :sessions

  get '/' do
    "Hello"
  end

  get '/calculator' do
    # "Calculator goes here"
    erb :calculator
  end

  post '/calculator' do
    costs = params[:costs].to_i
    time  = params[:minutes].to_i
    instance = PriceUp.new
    $result = instance.wholesale(costs, time)
    redirect '/calculate'
  end

  get '/calculate' do
    # "result = "
    # $result
    erb :calculate
  end

end

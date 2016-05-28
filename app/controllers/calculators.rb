class PriceUpApp

  get '/calculator' do
    @wp_result = session[:wp_result]
    @rrp_result = session[:rrp_result]
    erb :calculator
  end

  post '/calculatewhp' do
    calc = Calculator.new
    costs = params[:costs].to_i
    time  = params[:minutes].to_i

    params[:rate_per_min] == "" ? rate_per_min = 0.34 : rate_per_min = params[:rate_per_min]
    calc.set_rate_per_min(rate_per_min.to_f)

    params[:wholesale_markup] == "" ? wholesale_markup = 2.00 : wholesale_markup = params[:wholesale_markup]
    calc.set_wholesale_markup(wholesale_markup.to_f)

    session[:wp_result] = '%.2f' % calc.wholesale(costs, time)
    redirect '/calculator'
  end

  post '/calculaterrp' do
    calc = Calculator.new
    wholesale_price = params[:wholesale_price].to_f

    params[:rrp_markup] == "" ? rrp_markup = 2.5 : rrp_markup = params[:rrp_markup]
    calc.set_rrp_markup(rrp_markup.to_f)

    session[:rrp_result] = '%.2f' % calc.retail(wholesale_price)
    redirect '/calculator'
  end

end

class Calculator

  attr_reader :per_min_rate, :wholesale_markup, :rrp_markup

  def initialize
    @per_min_rate = 0.34
    @wholesale_markup = 2
    @rrp_markup = 2.5
  end

  def wholesale(cost, minutes)
    ((cost + (minutes * @per_min_rate)) * @wholesale_markup)
  end

  def retail(wholesale_price)
    wholesale_price * @rrp_markup
  end

  def set_rate_per_min(rate)
    @per_min_rate = rate
  end

end

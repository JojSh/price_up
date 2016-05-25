class Calculator

  attr_reader :per_min_rate, :wholesale_rate, :rrp_rate

  def initialize
    @per_min_rate = 0.34
    @wholesale_rate = 2
    @rrp_rate = 2.5
  end

  def wholesale(cost, minutes)
    ((cost + (minutes * @per_min_rate)) * @wholesale_rate)
  end

  def retail(wholesale_price)
    wholesale_price * @rrp_rate
  end

  # def set_rate_per_min(rate)
  #   @per_min_rate = rate
  # end

end

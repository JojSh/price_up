class PriceUp

  def wholesale(cost, minutes)
    ((cost + (minutes * 0.34)) * 2)
  end

  def retail(wholesale_price)
    wholesale_price * 2.5
  end

end

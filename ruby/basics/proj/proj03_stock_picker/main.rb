def stockpicker(prices)
  best_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index do |price, index|
    (index + 1...prices.length).each do |future_index|
      profit = prices[future_index] - price
      if profit > best_profit
        best_profit = profit
        buy_day = index
        sell_day = future_index
      end
    end
  end

  [buy_day, sell_day]
end

prices = [17,3,6,9,15,8,6,1,10]
puts stockpicker(prices)
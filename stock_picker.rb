def stock_picker(prices)
  result = []
  max_profit = 0
  prices.combination(2) do |combination|
    profit = combination[1] - combination[0]
    if profit > max_profit
      max_profit = profit
      result[0] = prices.index(combination[0])
      result[1] = prices.index(combination[1])
    end
  end
  result
end

prices = [17,3,6,9,15,8,6,1,10]
p stock_picker(prices)
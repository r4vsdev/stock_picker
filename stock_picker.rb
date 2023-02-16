# frozen_string_literal: true

def stock_picker(prices)
  days = []
  max_profit = 0
  prices.combination(2) do |combination|
    profit = combination.last - combination.first
    if profit > max_profit
      max_profit = profit
      days[0] = prices.index(combination.first)
      days[1] = prices.index(combination.last)
    end
  end
  days
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(prices) # => [1,4]  # for a profit of $15 - $3 == $12

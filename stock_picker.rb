require 'pry-byebug'
prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  if prices.min == prices[-1]
    prices.delete_at(-1)
  end
  
  best_buy   = prices.min
  best_buy_i = prices.index(best_buy)
  best_sell  = prices[best_buy_i..-1].max
    
  second_best_buy   = prices.min(2)[1]
  second_best_buy_i = prices.index(second_best_buy)
  second_best_sell  = prices[second_best_buy_i..-1].max

  profit_1 = best_sell - best_buy
  profit_2 = second_best_sell - second_best_buy

  if profit_2 > profit_1
    profit_1   = profit_2
    best_buy   = prices.min(3)[2]
    best_buy_i = prices.index(best_buy)
    best_sell  = prices[best_buy_i..-1].max
  end
    result = [prices.index(best_buy), prices.index(best_sell)]
  binding.pry
end

p stock_picker(prices)
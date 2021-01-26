# Best Time to Buy and Sell Stock II

# Say you have an array prices for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

# Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).

# def max_profit(prices)
#   sum = 0
#   prices.each { |price| sum += price }
#   p sum
# end

def max_profit(prices)
  profit = 0
  prices.each do |price|
    if price == 1
      profit = price - prices[2]
      p profit.abs
    end
  end
end

max_profit([7,1,5,3,6,4])
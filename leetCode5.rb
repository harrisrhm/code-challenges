# Best Time to Buy and Sell Stock II

# Say you have an array prices for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

# Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).

# test
# def max_profit(prices)
#   sum = 0
#   prices.each { |price| sum += price }
#   p sum
# end

# not working!!
# def max_profit(prices)
#   low_price = 0
#   high_price = 0
#   sub_total = 0
#   profit = 0
#   while sub_total < prices.length -1
#     while sub_total < prices.length - 1 && prices[sub_total] >= prices[sub_total + 1]
#     sub_total += 1
#     end
#     low_price = prices[sub_total]
#     while sub_total < prices.length - 1 && prices[sub_total + 1] >= prices[sub_total]
#     sub_total += 1
#     end
#     high_price = prices[sub_total]
#     profit += high_price - low_price
#   end
# end

# not working!!
# def max_profit(prices)
#   low_price = -1
#   high_price = 0
#   sub_total = 0
#   profit = 0
  
#   prices.each do |price, index|
#     if price < prices[index + 1] && low_price == -1
#       low_price = price
#     else
#       price > prices[index + 1] || index == prices.length - 1 && low_price != -1
#       high_price = price
#       profit += high_price - low_price
#       low_price = -1
#       high_price = 0
#     end
#     profit
#   end
#   profit
# end

def max_profit(prices)
  profit = 0
  prices.each_with_index do |price, index|
    if prices[index + 1] && prices[index + 1] > price
      profit += prices[index + 1] - price
    end
  end
  profit
end

max_profit([7,1,5,3,6,4])
# max_profit([1,2,3,4,5])
# max_profit([7,6,4,3,1])
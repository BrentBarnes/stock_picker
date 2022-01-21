prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)

  new_low_found = false
  new_low = nil
  new_high_found = false
  new_high = nil
  previous_price = prices[0] + 1
  i = 0
  k = 0
  comparing_array = []
  comparing_array << Array.new(2)


  prices.each do |current_price|

    if current_price < previous_price && new_low_found == false
      comparing_array[i][k] = current_price
    elsif current_price > previous_price && new_low_found == false
      new_low_found = true
      k += 1
      comparing_array[i][k] = current_price
    elsif current_price > previous_price && new_low_found == true
      comparing_array[i][k] = current_price
    elsif current_price < previous_price && new_high_found == false
      new_high_found = true
      new_low_found = false
      i += 1
      k -= 1
      comparing_array << Array.new(2)
      comparing_array[i][k] = current_price
      new_high_found = false
    end
    previous_price = current_price
  end

  previous_difference = nil
  best_prices = nil

  comparing_array.each do |nested_array|

    current_difference = nested_array[1] - nested_array[0]

    if  previous_difference == nil
      previous_difference = current_difference
      best_prices = nested_array
    elsif current_difference > previous_difference
      previous_difference = current_difference
      best_prices = nested_array
    end
  end

  best_days = Array.new(2)
  best_days[0] = prices.index(best_prices[0])
  best_days[1] = prices.index(best_prices[1])

  p best_days
end

stock_picker(prices)
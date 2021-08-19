def stock_picker(stocks)
    max_elem = stocks.min
    min_elem = stocks.max
    profit = 0
    min_index = 0
    max_index = 0
    temp_min_index = 0
    stocks.each_with_index do |price, i|
        if price < min_elem
            min_elem = price
            temp_min_index = i        
        end
        if price - min_elem > profit
            max_index = i
            profit = price - min_elem
            min_index = temp_min_index
        end
    end
    [min_index, max_index]
end

puts stock_picker([17,3,6,9,15,8,6,1,2,18])
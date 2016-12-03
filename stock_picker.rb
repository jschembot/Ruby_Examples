def stock_picker(price_arr)
    profits = -993
    buy_low = 100
    sell_hi = -40
    max_profit = []
    price_arr.each do |buy|
        price_arr.each do |sell|
            if profits < (sell - buy)
                profits = (sell - buy)
                sell_hi = sell
                buy_low = buy
                max_profit = [buy_low, sell_hi]
            end
        end
    end
    puts "#{max_profit}"
    puts "You'll make a $ #{profits} profit."
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([23,4884,28,858,4759])

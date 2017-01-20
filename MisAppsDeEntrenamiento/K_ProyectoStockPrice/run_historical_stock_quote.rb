require_relative 'historical_stock_quote'

apple = 'AAPL'
microsoft = 'MSFT'
google = 'GOOG'
chedraui = 'CHDRAUIB.MX'

def stock_price_selector(*symbol_array)
  historic = HistoricalStockQuote.new 
  symbol_array.each do |symbol|
    price_array = historic.historical_open_price(symbol)
    historic.write_price_by_symbol(symbol, price_array)
  end  
end

stock_price_selector(apple, microsoft, google, chedraui)

#price_array = historic.historical_open_price('GOOG')
#historic.write_price_by_symbol('GOOG', price_array)
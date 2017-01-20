require_relative 'stock_quote'

apple = 'AAPL'
microsoft = 'MSFT'
google = 'GOOG'
chedraui = 'CHDRAUIB.MX'


# El asterísco en 'tor(*symbol_array)' convierte ese parametro en un array
def stock_price_selector(*symbol_array)
  symbol_array.each do |symbol|
    stock_price = StockQuote.price_by_symbol(symbol)
    StockQuote.write_price_by_symbol(symbol, stock_price)
  end  
end

stock_price_selector(apple, microsoft, google, chedraui)
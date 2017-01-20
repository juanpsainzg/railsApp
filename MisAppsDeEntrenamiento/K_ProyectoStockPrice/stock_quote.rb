#obtenemos el gem de yahoo finance para los precios de los stocks
#Lo instalamos desde terminal $$$ gem install yahoo-finance
require 'yahoo-finance'


class StockQuote
  
  def initialize
    
  end
  
  def self.price_by_symbol(symbol)
    client = YahooFinance::Client.new
    data = client.quotes([symbol], [:open])
    data[0].open
  end
  
  def self.write_price_by_symbol(symbol, price)
    filename = "#{symbol}.csv"
    todays_date = Time.now.strftime('%Y.%m.%d')
    File.open(filename, 'a') do |file|
      file << "#{todays_date}, #{price}\n"
    end
  end

end


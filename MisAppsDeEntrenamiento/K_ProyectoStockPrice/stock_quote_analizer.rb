require 'csv'

class StockQuoteAnalyzer
  def self.symbol_lookup(symbol)
    begin 
      CSV.read("#{symbol}.csv")
    rescue StandardError => e
      puts e
    end
  end
  
  def self.average_price(symbol)
    quotes = symbol_lookup(symbol)
    prices = quotes.map do |quote|
      quote[1].to_f 
    end
    # *.inject(:+) toma todos los valores y los suma
    suma = prices.inject(:+)
    suma / prices.length
  end
  
  def self.max_price(symbol)
    quotes = symbol_lookup(symbol)
    prices = quotes.map do |price|
      price[1].to_f
    end
    prices.max    
  end
  
  def self.min_price(symbol)
    quotes = symbol_lookup(symbol)
    prices = quotes.map do |price|
      price[1].to_f 
    end
    prices.min
  end
  
  def self.std_deviation(symbol)
    quotes = symbol_lookup(symbol)
    prices = quotes.map do |price|
      price[1].to_f 
    end
    m = average_price(symbol)
    sum = prices.inject(0){|accum, i| accum + (i - m) ** 2 }
    sum1 = sum / (prices.length - 1).to_f
    Math.sqrt(sum1)
  end
  
  def self.max_range(symbol)
    average_price(symbol) + std_deviation(symbol)
  end
  
  def self.min_range(symbol)
    average_price(symbol) - std_deviation(symbol)
  end  
end

datos = StockQuoteAnalyzer.average_price('GOOG')

puts
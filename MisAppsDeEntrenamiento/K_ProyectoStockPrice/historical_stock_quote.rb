require 'yahoo-finance'


class HistoricalStockQuote
  def historical_price(symbol)
    yahoo_client = YahooFinance::Client.new
    data = yahoo_client.historical_quotes(symbol, {start_date: Time::now-(24*60*60*365), end_date: Time::now})
  end

  def historical_open_price(symbol)
    yahoo_client = YahooFinance::Client.new
    data = yahoo_client.historical_quotes(symbol, {start_date: Time::now-(24*60*60*365), end_date: Time::now})
    data.map do |quote|
      [quote.trade_date, quote.open]
    end
  end

  def write_price_by_symbol(symbol, quotes)
    filename = "#{symbol}.csv"
    CSV.open(filename, "w") do |file|
      quotes.each do |quote|
        file << quote
      end
    end
  end
end





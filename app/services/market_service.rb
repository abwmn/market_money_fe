class MarketService
  def initialize
    
  end

  def self.markets
    conn.get_url('markets')
  end

  private

  def conn
    Faraday.new('localhost:3000/api/v0/')
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body)
  end
end
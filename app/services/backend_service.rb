class BackendService
  def initialize
    
  end

  def markets
    get_url("markets")
  end

  def get_market(id)
    get_url("markets/#{id}")
  end

  def market_vendors(market_id)
    get_url("markets/#{market_id}/vendors")
  end

  def get_vendor(id)
    get_url("vendors/#{id}")
  end

  private

  def conn
    Faraday.new("http://localhost:3000/api/v0")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body)
  end
end
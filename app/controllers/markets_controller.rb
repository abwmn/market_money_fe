class MarketsController < ApplicationController
  before_action :service

  def index
    @markets = @service.markets["data"]
  end

  def show
    @market = @service.get_market(params[:id])
    @vendors = @service.market_vendors(params[:id])
  end

  private
  
  def service
    @service ||= BackendService.new
  end
end
class MarketsController < ApplicationController
  # before_action :service

  def index
    @markets = MarketService.markets
  end

  private
  
  # def service
  #   @_service ||= MarketService.new
  # end
end
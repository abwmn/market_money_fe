class VendorsController < ApplicationController
  before_action :service

  def show
    @vendor = @service.get_vendor(params[:id])
  end

  private
  
  def service
    @service ||= BackendService.new
  end
end
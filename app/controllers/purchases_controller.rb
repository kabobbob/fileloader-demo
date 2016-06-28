class PurchasesController < ApplicationController
  def index
    @purchase_file = PurchaseFile.new
    @purchase_files = PurchaseFile.all
  end

  def show
  end
end

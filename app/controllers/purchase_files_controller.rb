class PurchaseFilesController < ApplicationController
  require 'csv'

  def show
    file = PurchaseFile.find params[:id]
    @rows = CSV.read(file.file.path)
  end

  def create
    file = PurchaseFile.new(file_params)
    file.save if file.valid?
    redirect_to purchase_file_path(file)
  end

  private

  def file_params
    params.require(:purchase_file).permit(:file)
  end
end

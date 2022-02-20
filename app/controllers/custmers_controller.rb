class CustmersController < ApplicationController
  
  def show
    @custmer = Custmer.find(params[:id])
  end
  
  def edit
    @custmer = Custmer.find(params[:id])
  end
  
  def update
    @custmer = Custmer.find(params[:id])
    @custmer.update(custmer_params)
    redirect_to custmer_path(@custmer)
  end
  
  private
  def custmer_params
    params.require(:custmer).permit(:name, :introduction, :image)
  end
end

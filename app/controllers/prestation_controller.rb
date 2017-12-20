class PrestationController < ApplicationController

  def index
    @prestations = Prestation.all
  end

  def new
  	@prestation = Prestation.new
  end

  def create
  	@prestation = Prestation.new(prestation_params)
  	if @prestation.save
    	redirect_to "/prestations"
	else
		render 'new'
	end
  end

  def show
    @prestation = Prestation.find(params[:id])
  end

  def update
    @prestation = Prestation.find(params[:id])
    if @prestation.update name: params[:name]
      redirect_to "/prestations/#{params[:id]}"
    else
      render "show"
    end
  end

  def destroy
    Prestation.find(params[:id]).destroy
    redirect_to "/prestations"
  end

private
	
  def prestation_params
  	params.require(:prestation).permit(:name, :categorie, :description, :tarif, :duree, :lieu, :image)
  end

end


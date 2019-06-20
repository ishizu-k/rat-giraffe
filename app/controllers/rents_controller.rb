class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
    @rent.stations.build
  end

  def create
    @rent = Rent.new(rent_params)
    if @rent.save
      redirect_to rents_path
    else
      render 'new'
    end
  end

  def show
    @rent = Rent.find(params[:id])
    @station = @rent.stations.find(params[:id])
  end

  def edit
    @rent = Rent.find(params[:id])
  end

  def update
  end

  def delete
  end

  private

  def rent_params
    params.require(:rent).permit(:id, :property_name, :fee, :address, :age, :note, stations_attributes: [:id, :rent_id,:line_name, :station_name, :walk])
  end

#  def station_params
#    params.require(:station).permit(:line_name, :station_name, :walk)
#  end

end

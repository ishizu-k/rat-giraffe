class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]

  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
    2.times { @rent.stations.build }
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
  end

  def edit
  end

  def update
    if @rent.update(rent_params)
      redirect_to rents_path
    else
      render 'edit'
    end
  end

  def destroy
    @rent.destroy
    redirect_to rents_path
  end

  private

  def rent_params
    params.require(:rent).permit(:id, :property_name, :fee, :address, :age, :note, stations_attributes: %i(id rent_id line_name station_name walk))
  end

  def set_rent
    @rent = Rent.find(params[:id])
  end
end

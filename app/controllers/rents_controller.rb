class RentsController < ApplicationController
  def index
  end

  def new
    @rent = Rent.new
  end

  def create
    Rent.create(rent_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def rent_params
    params.require(:rent).permit(:property_name, :fee, :address, :age, :note)
  end

end

class AdderessesController < ApplicationController
  def new
  end

  def show
    @address = Address.find(params[:id])
  end

  def edit
  end

  def update
  end

  def create
  end

  private

  def post_params
    params.require(:address).permit(:address, :new_address, :certificate). merge(user_id: current_user.id)
  end

end

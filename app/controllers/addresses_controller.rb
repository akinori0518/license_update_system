class AddressesController < ApplicationController
  def new
  end

  def show
    @address = Address.find_by(user_id: current_user.id)
  end

  def edit
    @address = Address.find_by(user_id: current_user.id)
  end

  def update
    @address = Address.find_by(user_id: current_user.id)
    if @address.update(address_params)
      redirect_to new_image_path
    else
      redirect_to edit_address_path
    end
  end

  def create
  end

  private

  def address_params
    params.require(:address).permit(:address, :new_address, :certificate). merge(user_id: current_user.id)
  end

end

class UsersController < ApplicationController

  def index
    @address = Address.find_by(user_id: current_user.id)
    @image = Image.find_by(user_id: current_user.id)
    @information = Information.find_by(user_id: current_user.id)
  end

  def new
  end

  def create
  end

end

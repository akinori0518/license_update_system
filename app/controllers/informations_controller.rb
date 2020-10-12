class InformationsController < ApplicationController
  def new
    @information = Information.new
  end

  def create
    @information = Information.new(post_params)

    if @information.save
      flash[:notice] = '連絡先を登録しました'
      redirect_to address_path(current_user.id)
    else
      flash[:notice] = '未入力の項目があります'
      redirect_to new_information_path
    end
  end

  def edit
    @information = Information.find_by(user_id: current_user.id)
  end

  def update
    @information = Information.find_by(user_id: current_user.id)
    if @information.update(post_params)
      redirect_to root_path
    else
      redirect_to edit_information_path
    end
  end


  private

  def post_params
    params.require(:information).permit(:email, :phone_number). merge(user_id: current_user.id)
  end

end

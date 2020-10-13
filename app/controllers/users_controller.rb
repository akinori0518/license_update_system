class UsersController < ApplicationController

  require 'payjp'

  def index
    @address = Address.find_by(user_id: current_user.id)
    @image = Image.find_by(user_id: current_user.id)
    @information = Information.find_by(user_id: current_user.id)
  end

  def show
  end

  def purchase
    Payjp.api_key = "sk_test_6fc238995de84e498a7425ba"
    Payjp::Charge.create(
      amount: 3000, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )

    redirect_to confirm_user_path(current_user.id)
  end

  def confirm
  end

end

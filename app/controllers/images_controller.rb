class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(post_params)

    if @image.save
      flash[:notice] = '画像を登録しました'
      redirect_to root_path
    else
      flash[:notice] = '未入力の項目があります'
      redirect_to new_image_path
    end
  end


  private

  def post_params
    params.require(:image).permit(:image). merge(user_id: current_user.id)
  end
  
end

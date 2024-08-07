class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: "プロフィールが正常に更新されました。"
    else
      render :edit
    end
  end
  private

  def user_params
    params.require(:user).permit(:profile_image, :name, :number, :telephone_number, :email)
  end
end

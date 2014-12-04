class UsersController < ApplicationController

  def create
    @user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
    if @user.save
      sign_in @user
    end
  end
end

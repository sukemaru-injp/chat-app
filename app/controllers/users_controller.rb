class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to '/messages/index'
    else
      render "users/edit/#{user.id}"
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end

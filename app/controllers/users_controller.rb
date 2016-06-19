class UsersController < ApplicationController

  def favorites_list
    @favorites = current_user.favorites
  end

  def remove_favorite
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    redirect_to favorites_path, notice: "Favorite was removed."
  end

  def show
    @user = User.find_by(id: params[:id])
  end
end

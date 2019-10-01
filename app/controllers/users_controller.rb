class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @photos =Photo.order("created_at DESC").limit(4)
  end

end

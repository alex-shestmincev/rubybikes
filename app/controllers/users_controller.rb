class UsersController < ApplicationController

  before_filter :authenticate_user!
  before_action :user_find_by_id, only: [:destroy]

  def index
    @users = User.sorted_descending.all
  end

  def destroy
    if @user.destroy
      flash[:notice] = t('users_deleted', user: "#{@user.email}")
    else
      flash[:notice] = t('users_delete_fail', users: "#{@user.title}")
    end
    redirect_to users_path
  end

  private
  def user_find_by_id
    @user = User.find(params[:id])
  end
end

class UsersController < ApplicationController
  def index
    @users = User.sorted_descending.all
  end
end

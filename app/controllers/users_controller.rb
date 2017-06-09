class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    #binding.pry
    @followers = @user.followers
    @followed_users = @user.followed_users
  end

  def edit

  end

  private
    def set_user
      @user = User.find(params[:id])
    end

end

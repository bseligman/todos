class UsersController < ApplicationController
  before_filter :require_no_logged_in_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      log_in(@user)
      redirect_to root_url
    else
      render :new
    end
  end
end

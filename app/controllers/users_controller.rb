class UsersController < ApplicationController

  def create
    @user = User.new(user.params)
    if @user.save
      UserMailer.user_alert(@user).deliver_now
      redirect_to @user, notice: 'User was successfully created.'
    end
  end

  def new
    @user = User.new
  end

  def index
     @users = User.where(user_type: "technician")
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def invite
    User.invite!(email: params[:email], name: params[:name])
  end

  def user_status(user)
    if user.user_type =="technician"
      true
    else
      true
    end
  end



end

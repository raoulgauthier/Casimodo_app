class UsersController < ApplicationController

before_action :configure_permitted_parameters, if: :devise_controller?
before_action :update_resource_params, if: :devise_controller?

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


  def user_status(user)
    if user.user_type =="technician"
      true
    else
      true
    end
  end

 protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :user_type])
  end
private

  def update_resource_params
    params.require(:user).permit(:email, :name, :user_type)
  end

  def configure_permitted_parameters_invitation

    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:email, :name, :user_type])
  end

end

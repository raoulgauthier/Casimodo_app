class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for (resource)
    if current_user.user_type == "technician"
      return interventions_path
    else
       return root_path
    end
  end

   protected

  def permit_inv
      if params[:controller] == "devise/invitations"
           params.require(:user).permit(:email, :name, :user_type)
      end
  end

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name, :email, :user_type])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :user_type])
    devise_parameter_sanitizer.permit(:invite, keys:  [:name, :email, :user_type])
  end

  #  def devise_parameter_sanitizer
  #    if resource_class == User
  #      User::ParameterSanitizer.new(User, :user, params)
  #    end
  #  end

end

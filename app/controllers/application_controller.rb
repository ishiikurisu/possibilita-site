class ApplicationController < ActionController::Base
  before_action :dont_allow_user_self_registration
  protect_from_forgery with: :exception
  
  private
  
  def after_sign_out_path_for(resource)
    root_path
  end
  
  private
  # redirecionando rota "admins/sign_up" para o root
  def dont_allow_user_self_registration
    if ['devise/registrations','devise_invitable/registrations'].include?(params[:controller]) && ['new','create'].include?(params[:action])
      redirect_to root_path
    end
  end
end

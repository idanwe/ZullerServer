class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #plugin protection
  # is_cancan=true
  # begin
  #   Kernel.const_get('CanCan')
  # rescue
  #   is_cancan=false
  # end
  # if is_cancan
  #   rescue_from CanCan::AccessDenied do |exception|
  #     flash[:error] = 'Access denied.'
  #     redirect_to new_user_session_path
  #   end
  # end
end

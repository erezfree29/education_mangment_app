class ApplicationController < ActionController::Base

   before_action :authenticate_overtstaff!,unless: :institution_staff_signed_in?
   before_action :authenticate_institutionstaff!,unless: :overt_staff_signed_in?
   before_action :configure_permitted_parameters, if: :devise_controller?
	def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

 private
 def institution_staff_signed_in?
    institutionstaff_signed_in?
 end

 def overt_staff_signed_in?
    overtstaff_signed_in?
 end


end






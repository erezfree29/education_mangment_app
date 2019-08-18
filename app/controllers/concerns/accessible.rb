module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_institutionstaff
  end

  protected
  def check_institutionstaff
    if current_overtstaff
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(rails_admin.dashboard_path) && return
    elsif current_institutionstaff
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_institutionstaff_root_path) && return
    end
  end
end
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :set_footer

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number) }
  end

  private
  def set_footer
    @recent_listings = SpaceListing.order("created_at DESC").limit(4)
    @top_hosts = User.order(:created_at).limit(4)
    @garage_count = SpaceListing.where("space_type": "Garage").count
    @house_count = SpaceListing.where("space_type": "House").count
    @outdoor_count = SpaceListing.where("environment_type": "Outdoor").count
    @indoor_count = SpaceListing.where("environment_type": "Indoor").count
  end
end

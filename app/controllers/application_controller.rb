class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  # Make Devise helpers available in views
  include Devise::Controllers::Helpers

  def require_login
    return if user_signed_in?

    flash[:error] = "Vous devez vous connecter"
    redirect_to new_session_path
  end
end

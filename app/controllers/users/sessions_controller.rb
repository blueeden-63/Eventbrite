class Users::SessionsController < Devise::SessionsController
  # This controller already handles sign_out through Devise
  # No need to override anything, Devise handles it automatically
end

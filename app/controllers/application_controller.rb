class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD
  include SessionsHelper
  
  def handle_unverified_request
    sign_out
    super
  end
end
=======
  
  include SessionsHelper
end
>>>>>>> 60a746404b5802cc3eef893f2a73684c70e89d5c

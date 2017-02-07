module Helpers

  def current_user
    @current_user ||= User.get(session[:user_id]) # TODO - incorporate this into sessions controller
  end

  def error?
    flash[:errors] && !flash[:errors].empty? # TODO - incorporate this into controller
  end

end

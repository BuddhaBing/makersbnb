module Helpers

  def current_user
    @current_user ||= User.get(session[:user_id])
  end

  def error?
    flash[:errors] && !flash[:errors].empty?
  end

  def body_class(class_name="default")
    @body_class = class_name
  end

  def booking_status(status)
    return "pending" if status.nil?
    return "accepted" if status
    return "declined" unless status
  end

  def pretty_start_date(booking)
    booking.date_range.start_date.strftime("From %m/%d/%Y ")
  end

  def pretty_end_date(booking)
    booking.date_range.end_date.strftime("to %m/%d/%Y ")
  end

  def sign_out
    session[:user_id] = nil
    flash.keep[:notice] = 'Goodbye!'
    redirect '/'
  end

end

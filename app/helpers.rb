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
    "From #{format_date(booking.date_range.start_date)} "
  end

  def pretty_end_date(booking)
    "to #{format_date(booking.date_range.end_date)}"
  end

  def format_date(date)
    date.strftime("%m/%d/%Y")
  end

  def sign_out_helper
    session[:user_id] = nil
    flash.keep[:notice] = 'Goodbye!'
    redirect '/'
  end

  def date_valid?(start_date, end_date)
    start_date != "" && end_date != ""
  end

end

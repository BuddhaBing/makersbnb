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

  def booked_room(room_id)
    Booking.first(room_id: room_id)
  end

end

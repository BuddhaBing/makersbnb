def make_date_range(start: Time.new(2016,1,1), ending: Time.new(2016,1,30))
  DateRange.first_or_create(start_date: start,
                            end_date: ending)
end

class BusinessPresenter < SimpleDelegator
  def published_review_rating
    reviews.published.average(:rating).try(:round, 2)
  end

  def general_info_truncated
    general_info.truncate_words(10)
  end

  def published_review_count
    reviews.published.count
  end

  def is_open?
    datetime = DateTime.current
    week_day = datetime.wday
    datetime = datetime.strftime( "%H%M%S%N" )
    operating_hour = operating_hours.find_by(day_of_week: week_day)
    opening_time = operating_hour.opening_timing.strftime( "%H%M%S%N" )
    closing_time = operating_hour.closing_timing.strftime( "%H%M%S%N" )
    if datetime >= opening_time && datetime <= closing_time
      true
    else
      false
    end
  end

  def full_address
    "#{address.address_line_1}, #{address.zipcode}, #{address.city}"
  end
end
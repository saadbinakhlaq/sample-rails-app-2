class OperatingHourPresenter < SimpleDelegator
  def timings
    "#{Date::DAYNAMES[day_of_week]} #{opening_timing.strftime("%T")}-#{closing_timing.strftime("%T")}"
  end
end

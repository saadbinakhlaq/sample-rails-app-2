class OperatingHour < ApplicationRecord
  belongs_to :business

  validates :day_of_week, presence: true,
    inclusion: {in: Date::DAYNAMES}
  validates :open, presence: true
  validates :close, presence: true

  def day_of_week
    value = read_attribute(:day_of_week)
    value = 0 if value.nil?
    Date::DAYNAMES[value]
  end

  def day_of_week=(value)
    day = Date::DAYNAMES.index(value)
    write_attribute(:day_of_week, day) if day.present?
  end
end

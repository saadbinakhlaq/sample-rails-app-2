class OperatingHour < ApplicationRecord
  belongs_to :business

  validates :day_of_week, presence: true,
    inclusion: {in: (0..7)}
  validates :opening_timing, presence: true
  validates :closing_timing, presence: true
end

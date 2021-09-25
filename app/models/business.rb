class Business < ApplicationRecord
  has_one :address, as: :addressable, dependent: :destroy
  has_many :operating_hours, dependent: :destroy
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations
  has_many :reviews, dependent: :destroy

  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :operating_hours, allow_destroy: true

  validates :name, presence: true
end

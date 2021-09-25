class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :subcategories, class_name: "Category", foreign_key: "parent_category_id", dependent: :destroy
  belongs_to :parent_category, class_name: "Category", optional: true

  has_many :categorizations
  has_many :businesses, through: :categorizations

  validates :name, uniqueness: {case_sensitive: false}, presence: true
  validate :parent_category_id_is_not_self, on: :update

  def parent_category_id_is_not_self
    if !parent_category_id.nil?
      if parent_category_id == id
        errors.add(:parent_category_id, "can't be same as self")
      end
    end
  end
end

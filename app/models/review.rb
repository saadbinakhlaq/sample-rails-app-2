class Review < ApplicationRecord
  belongs_to :account
  belongs_to :business

  enum status: {
    pending: "pending",
    published: "published"
  }

  scope :published, -> { where(status: :published) }

  def self.five_rating_count
    where(rating: 5).published.count
  end

  def self.total_published_review_count
    published.count
  end

  def self.four_rating_count
    where(rating: 4).published.count
  end

  def self.three_rating_count
    where(rating: 3).published.count
  end

  def self.two_rating_count
    where(rating: 2).published.count
  end

  def self.one_rating_count
    where(rating: 1).published.count
  end

  def self.rating_count_percent(for_rating_count)
    puts "HI #{for_rating_count}"
    ((for_rating_count / total_published_review_count) * 100)
  end
end

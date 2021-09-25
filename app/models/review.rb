class Review < ApplicationRecord
  belongs_to :account
  belongs_to :business

  enum status: {
    pending: "pending",
    published: "published"
  }
end

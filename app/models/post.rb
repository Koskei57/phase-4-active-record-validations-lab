class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates_inclusion_of :category, :in => %w(Fiction Non-Fiction)
  #   validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} shoulda-matchers test string" }

end

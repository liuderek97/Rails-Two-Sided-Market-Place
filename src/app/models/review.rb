class Review < ApplicationRecord
  belongs_to :reviewer, class_name: "Profile", foreign_key: "reviewer_id"
  belongs_to :reviewed, class_name: "Profile", foreign_key: "reviewed_id"

  validates :star_rating, numericality: { only_integer: true, 
                                          greater_than_or_equal_to: 1, 
                                          less_than_or_equal_to:    5 }
  validates :title,       presence: true
  validates :content,     presence: true
  validates :reviewer_id, presence: true
  validates :reviewed_id, presence: true
end

class Profile < ApplicationRecord
  belongs_to :user
  has_many :jobs, class_name: "Job", foreign_key: "employer_id"
  has_many :bids, class_name: "Bid", foreign_key: "bartender_id"
  has_many :reviews,  class_name: "Review", foreign_key: "reviewer_id"
  has_many :reviewed, class_name: "Review", foreign_key: "reviewed_id"
  has_many_attached :pictures

  validates :name, presence: true
  validates :user, uniqueness: true
end

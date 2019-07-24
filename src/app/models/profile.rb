class Profile < ApplicationRecord
  belongs_to :user
  
  has_many :reviews,  class_name: "Review", foreign_key: "reviewer_id"
  has_many :reviewed, class_name: "Review", foreign_key: "reviewed_id"
end

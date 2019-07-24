class Review < ApplicationRecord
  belongs_to :reviewer, class_name: "Profile", foreign_key: "reviewer_id"
  belongs_to :reviewed, class_name: "Profile", foreign_key: "reviewed_id"
end

class Job < ApplicationRecord
  belongs_to :employer, class_name: "Profile", foreign_key: "employer_id"
end

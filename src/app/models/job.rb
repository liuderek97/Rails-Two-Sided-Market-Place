class Job < ApplicationRecord
  belongs_to :employer, class_name: "Profile", foreign_key: "employer_id"
  
  validates_presence_of :amount
  validates :employer_id, presence: true
  validates :title,   presence: true
  validates :content, presence: true
  validates :address, presence: true
end

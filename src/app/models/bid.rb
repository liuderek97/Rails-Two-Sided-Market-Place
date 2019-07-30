class Bid < ApplicationRecord
  belongs_to :job
  belongs_to :bartender, class_name: "Profile", foreign_key: "bartender_id"
  
  validates :amount,  presence: true
  validates :content, presence: true
end

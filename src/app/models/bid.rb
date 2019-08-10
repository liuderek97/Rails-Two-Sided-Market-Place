class Bid < ApplicationRecord
  belongs_to :job
  belongs_to :bartender, class_name: "Profile", foreign_key: "bartender_id"

  validates :amount,  presence: true
  validates :content, presence: true
  validate  :prohibits_bid

  def prohibits_bid
    if bartender_id == job.employer_id
      errors.add(:bid, "cannot leave a bid on your own listing")
    end
  end
end

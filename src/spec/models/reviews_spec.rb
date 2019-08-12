require 'rails_helper'

describe Review, type: :model do
  # whats stored in subject is the result of building a review setting the reviewed_id
  # field and the revieer_id field
  subject { build(:review, reviewed_id: reviewed.id, reviewer_id: reviewer.id) }
  let(:reviewer) { create(:profile) }
  let(:reviewed) { create(:profile) }

  # this describes validations for subject
  describe 'validations' do
    it {
      warn subject.inspect
      should validate_presence_of(:title)
    }
    it { should validate_presence_of(:content) }
    it { should validate_numericality_of(:star_rating) }
    
    it "rating should be valid" do
      subject.star_rating = 5
      expect(subject.valid?).to be true

      subject.star_rating = -1
      expect(subject.valid?).to be false

      subject.star_rating = 6
      expect(subject.valid?).to be false
    end

    it "likes valid data" do
      expect(subject.valid?).to be true
    end
  end
end

require 'rails_helper'

describe Bid, type: :model do
  subject { build(:bid, bartender_id: bartender.id) }
  let(:bartender) { create(:profile) }

  describe 'validations' do
    it { should belong_to(:bartender) }
    it { should belong_to(:job)}
    it { should validate_presence_of(:amount) }

    it "likes valid data" do
      expect(subject.valid?).to be true
    end
  end
end

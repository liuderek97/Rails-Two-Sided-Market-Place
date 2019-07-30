require 'rails_helper'

describe Job, type: :model do
  subject { build(:job, employer_id: employer.id) }
  let(:employer) { create(:profile) }

  describe 'validations' do
    it { should belong_to(:employer) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:content) }

    it "likes valid data" do
      expect(subject.valid?).to be true
    end
  end
end

require 'rails_helper'

RSpec.describe Follow, :type => :model do
  context "associations" do
    it { should belong_to :user }
    it { should belong_to :following }
  end

  context "factories" do
    describe "#follow" do
      subject { FactoryGirl.build(:follow) }

      it { should be_valid }
    end
  end

  context "validations" do
    it { should validate_presence_of :following }
    it { should validate_presence_of :user }
  end
end

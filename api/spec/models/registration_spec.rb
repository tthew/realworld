# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Registration, type: :model do
  context 'when valid' do
    subject { described_class.new(email: 'test@test.com', password: 'password', username: 'tester') }

    it 'is valid' do
      expect(subject).to be_valid
    end

    it 'is able to save' do
      expect(subject.save).to be true
    end
  end

  context 'when persisted' do
    subject { described_class.new(email: 'test@test.com', password: 'password', username: 'tester').tap(&:save) }

    it 'has a user' do
      expect(subject.user).to be_a(User)
      expect(User.count).to eq 1
    end

    it 'has a profile' do
      expect(subject.profile).to be_a(Profile)
      expect(Profile.count).to eq 1
    end
  end

  context 'when invalid' do
    it 'should be invalid' do
      expect(subject).to be_invalid
    end

    it 'should not ba able to save' do
      expect(subject.save).to be false
      expect(subject.errors.size).to be > 0
    end
  end

  describe 'instance_methods' do
    it { is_expected.to respond_to(:email).with(0).arguments }
    it { is_expected.to respond_to(:email=).with(1).argument }
    it { is_expected.to respond_to(:invalid?).with(0).arguments }
    it { is_expected.to respond_to(:password=).with(1).argument }
    it { is_expected.to respond_to(:profile).with(0).arguments }
    it { is_expected.to respond_to(:save).with(0).arguments }
    it { is_expected.to respond_to(:user).with(0).arguments }
    it { is_expected.to respond_to(:username).with(0).arguments }
    it { is_expected.to respond_to(:username=).with(1).argument }
    it { is_expected.to respond_to(:valid?).with(0).arguments }
    it { is_expected.to_not respond_to(:password).with(0).arguments }
  end
end
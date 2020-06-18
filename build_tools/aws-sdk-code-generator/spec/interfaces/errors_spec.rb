# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Interfaces' do

  before(:all) do
    SpecHelper.generate_service(['SampleErrors'], multiple_files: false)
  end

  describe 'Error Interfaces' do

    let(:mock_context) { double('Context') }
    let(:test_message) { 'TEST' }

    it 'generates service errors with messages' do
      e = SampleErrors::Errors::ServiceErrorWithMessage.new(mock_context, test_message)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.message).to eq(test_message)
      expect(e.retryable?).to be(false)
      expect(e.throttling?).to be(false)
    end

    it 'generates retryable errors with messages' do
      e = SampleErrors::Errors::RetryableErrorWithMessage.new(mock_context, test_message)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.message).to eq(test_message)
      expect(e.retryable?).to be(true)
      expect(e.throttling?).to be(false)
    end

    it 'generates retryable errors without messages' do
      e = SampleErrors::Errors::RetryableErrorWithoutMessage.new(mock_context, nil)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.retryable?).to be(true)
      expect(e.throttling?).to be(false)
    end

    it 'generates throttling errors' do
      e = SampleErrors::Errors::ThrottlingError.new(mock_context, test_message)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.retryable?).to be(true)
      expect(e.throttling?).to be(true)
    end

    it 'generates retryable, non throttling errors' do
      e = SampleErrors::Errors::RetryableNonThrottlingError.new(mock_context, test_message)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.retryable?).to be(true)
      expect(e.throttling?).to be(false)
    end
  end
end
require_relative '../spec_helper'

describe 'Interfaces' do

  before(:all) do
    # TODO : support Aws.config[:sample] = { ... }
    @tmpdir = SpecHelper.generate_service(['Sample'], multiple_files: true)
  end

  after(:all) do
    SpecHelper.cleanup_service(@tmpdir)
  end

  describe 'Error Interfaces' do

    let(:mock_context) { double('Context') }
    let(:test_message) { 'TEST' }

    it 'generates service errors with messages' do
      e = Sample::Errors::ServiceErrorWithMessage.new(mock_context, test_message)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.message).to eq(test_message)
      expect(e.retryable?).to be(false)
      expect(e.throttling?).to be(false)
    end

    it 'generates retryable errors with messages' do
      e = Sample::Errors::RetryableErrorWithMessage.new(mock_context, test_message)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.message).to eq(test_message)
      expect(e.retryable?).to be(true)
      expect(e.throttling?).to be(false)
    end

    it 'generates retryable errors without messages' do
      e = Sample::Errors::RetryableErrorWithoutMessage.new(mock_context, nil)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.retryable?).to be(true)
      expect(e.throttling?).to be(false)
    end

    it 'generates throttling errors' do
      e = Sample::Errors::ThrottlingError.new(mock_context, test_message)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.retryable?).to be(true)
      expect(e.throttling?).to be(true)
    end

    it 'generates retryable, non throttling errors' do
      e = Sample::Errors::RetryableNonThrottlingError.new(mock_context, test_message)
      expect(e).to be_kind_of(Aws::Errors::ServiceError)
      expect(e.retryable?).to be(true)
      expect(e.throttling?).to be(false)
    end
  end
end
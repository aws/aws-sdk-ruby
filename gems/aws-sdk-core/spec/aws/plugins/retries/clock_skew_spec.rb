
require_relative '../../../spec_helper'
require_relative '../../../support/retry_errors_helper'

module Aws
  module Plugins
    describe Retries::ClockSkew do
      subject { Retries::ClockSkew.new }
      let(:endpoint) { 'example_endpoint' }
      let(:context) { double('context', http_response: response, http_request: request) }
      let(:response) { double('http_response', headers: headers) }
      let(:request) { double('http_request', endpoint: endpoint) }
      let(:headers) { {'date' => server_time} }
      let(:server_time) { Time.now.utc.to_s }

      describe '#initialize' do
        it 'is initialized with 0 correction' do
          expect(subject.clock_correction(endpoint)).to be 0
        end

        it 'is initialized with nil skew' do
          expect(subject.estimated_skew(endpoint)).to be_nil
        end
      end

      describe '#clock_skewed?' do
        context 'server time is not set' do
          let(:server_time) { nil }
          it { expect(subject.clock_skewed?(context)).to be false }
        end

        context 'server time is not parsable' do
          let(:server_time) { 'bogus time' }
          it { expect(subject.clock_skewed?(context)).to be false }
        end

        context 'server time matches the clients time' do
          let(:server_time) { Time.now.utc.to_s }
          it { expect(subject.clock_skewed?(context)).to be false }
        end

        context 'server time is off by more than the threshold' do
          let(:server_time) { (Time.now.utc - 1000).to_s }
          it { expect(subject.clock_skewed?(context)).to be true }
        end
      end

      describe '#update_clock_correction' do
        context 'server time is not set' do
          let(:server_time) { nil }
          it 'does not update the corrections' do
            subject.update_clock_correction(context)
            expect(subject.clock_correction(endpoint)).to be 0
          end
        end

        context 'server time matches the clients time' do
          let(:server_time) { Time.now.utc.to_s }
          it 'does not update the corrections' do
            subject.update_clock_correction(context)
            expect(subject.clock_correction(endpoint)).to be 0
          end
        end

        context 'server time is off by more than the threshold' do
          let(:server_time) { (Time.now.utc + 1000).to_s }
          it 'updates the corrections' do
            subject.update_clock_correction(context)
            expect(subject.clock_correction(endpoint)).to be_within(1).of(1000)
          end

          it 'does not update corrections for other end points' do
            subject.update_clock_correction(context)
            expect(subject.clock_correction('other_endpoint')).to be 0
          end
        end
      end

      describe '#update_estimated_skew' do
        context 'server time is not set' do
          let(:server_time) { nil }
          it 'does not update the skew' do
            subject.update_estimated_skew(context)
            expect(subject.estimated_skew(endpoint)).to be nil
          end
        end

        context 'server time is set' do
          let(:server_time) { (Time.now.utc + 1000).to_s }
          it 'updates the skew' do
            subject.update_estimated_skew(context)
            expect(subject.estimated_skew(endpoint)).to be_within(1).of(1000)
          end
        end
      end
    end
  end
end

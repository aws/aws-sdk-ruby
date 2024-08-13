# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Telemetry
    describe SpanStatus do
      describe '.unset' do
        it 'returns the correct expected code' do
          status = Aws::Telemetry::SpanStatus.unset
          expect(status.code).to eq(Aws::Telemetry::SpanStatus::UNSET)
        end
      end

      describe '.ok' do
        it 'returns the correct expected code' do
          status = Aws::Telemetry::SpanStatus.ok
          expect(status.code).to eq(Aws::Telemetry::SpanStatus::OK)
        end
      end

      describe '.error' do
        it 'returns the correct expected code' do
          status = Aws::Telemetry::SpanStatus.error
          expect(status.code).to eq(Aws::Telemetry::SpanStatus::ERROR)
        end
      end
    end
  end
end

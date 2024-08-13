# frozen_string_literal: true

require_relative '../spec_helper'
require 'opentelemetry-sdk'

module Aws
  describe Telemetry do
    describe '.otel_loaded?' do
      before { Aws::Telemetry.instance_variable_set(:@use_otel, nil) }

      it 'is true when opentelemetry-sdk is available' do
        expect(Aws::Telemetry).to receive(:require)
          .with('opentelemetry-sdk')
          .and_return(true)
        expect(Aws::Telemetry.otel_loaded?)
          .to be true
      end

      it 'returns false when opentelemetry-sdk is not available' do
        expect(Aws::Telemetry).to receive(:require)
          .with('opentelemetry-sdk')
          .and_raise(LoadError)
        expect(Aws::Telemetry.otel_loaded?)
          .to be false
      end

      it 'memoizes its status' do
        expect(Aws::Telemetry).to receive(:require)
          .once
          .with('opentelemetry-sdk')
          .and_raise(LoadError)
        Aws::Telemetry.otel_loaded?
        # second call should not call require again
        Aws::Telemetry.otel_loaded?
      end
    end

    describe '.module_to_tracer_name' do
      it 'correctly converts module to tracer name' do
        expect(Aws::Telemetry.module_to_tracer_name('Aws::Telemetry'))
          .to eq('aws.telemetry.client')
      end
    end
  end
end

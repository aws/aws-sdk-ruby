# frozen_string_literal: true

require_relative '../spec_helper'
require 'opentelemetry-sdk'

module Aws
  describe Telemetry do
    describe '.module_to_tracer_name' do
      it 'correctly converts module to tracer name' do
        expect(Aws::Telemetry.module_to_tracer_name('Aws::Telemetry'))
          .to eq('aws.telemetry.client')
      end
    end
  end
end

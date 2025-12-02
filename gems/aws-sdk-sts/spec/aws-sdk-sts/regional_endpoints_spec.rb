# frozen_string_literal: true

require_relative '../../../aws-sdk-core/spec/spec_helper'

require_relative '../spec_helper'

module Aws
  module STS
    describe Client do
      it 'sts_regional_endpoints is regional by default' do
        client = Client.new(stub_responses: true)
        expect(client.config.sts_regional_endpoints).to eq('regional')
      end

      it 'sts_regional_endpoints can be configured using shared config' do
        shared_config = <<~CONFIG
          [profile default]
          sts_regional_endpoints = legacy
        CONFIG
        mock_shared_config(shared_config)
        client = Client.new(stub_responses: true)
        expect(client.config.sts_regional_endpoints).to eq('legacy')
      end

      it 'sts_regional_endpoints can be configured using ENV with precedence over shared config' do
        shared_config = <<~CONFIG
          [profile default]
          sts_regional_endpoints = regional
        CONFIG
        mock_shared_config(shared_config)
        ENV['AWS_STS_REGIONAL_ENDPOINTS'] = 'legacy'
        client = Client.new(stub_responses: true)
        expect(client.config.sts_regional_endpoints).to eq('legacy')
      end

      it 'sts_regional_endpoints can be configured in code with precedence over ENV and shared config' do
        shared_config = <<~CONFIG
          [profile default]
          sts_regional_endpoints = regional
        CONFIG
        mock_shared_config(shared_config)
        ENV['AWS_STS_REGIONAL_ENDPOINTS'] = 'regional'
        client = Client.new(stub_responses: true, sts_regional_endpoints: 'legacy')
        expect(client.config.sts_regional_endpoints).to eq('legacy')
      end

      it 'validates sts_regional_endpoints in code' do
        expect { Client.new(stub_responses: true, sts_regional_endpoints: 'peccy') }
          .to raise_error(ArgumentError, /Expected :sts_regional_endpoints to be 'legacy' or 'regional'/)
      end

      it 'validates sts_regional_endpoints from shared config' do
        shared_config = <<~CONFIG
          [profile default]
          sts_regional_endpoints = peccy
        CONFIG
        mock_shared_config(shared_config)
        expect { Client.new(stub_responses: true) }
          .to raise_error(ArgumentError, /`sts_regional_endpoints` profile config/)
      end

      it 'validates sts_regional_endpoints from ENV' do
        ENV['AWS_STS_REGIONAL_ENDPOINTS'] = 'peccy'
        expect { Client.new(stub_responses: true) }
          .to raise_error(ArgumentError, /`AWS_STS_REGIONAL_ENDPOINTS` environment variable/)
      end
    end
  end
end

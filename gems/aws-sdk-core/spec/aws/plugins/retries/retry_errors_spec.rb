require_relative '../../../spec_helper'
require_relative '../../../support/retry_errors_helper'

module Aws
  module Plugins
    describe RetryErrors do
      RetryErrorsSvc = ApiHelper.sample_service

      let(:client) { RetryErrorsSvc::Client.new(stub_responses: true) }

      it 'defaults config.retry_limit to 3' do
        expect(client.config.retry_limit).to eq(3)
      end

      it 'defaults config.retry_max_delay to 0' do
        expect(client.config.retry_max_delay).to eq(0)
      end

      it 'defaults config.retry_base_delay to 0.3' do
        expect(client.config.retry_base_delay).to eq(0.3)
      end

      it 'defaults config.retry_jitter to :none' do
        expect(client.config.retry_jitter).to eq(:none)
      end

      it 'defaults config.retry_mode to legacy' do
        expect(client.config.retry_mode).to eq('legacy')
      end

      it 'can configure retry_mode with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:retry_mode).and_return('standard')
        expect(client.config.retry_mode).to eq('standard')
      end

      it 'can configure retry_mode using ENV with precedence over config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:retry_mode).and_return('standard')
        ENV['AWS_RETRY_MODE'] = 'adaptive'
        expect(client.config.retry_mode).to eq('adaptive')
      end

      it 'raises when retry_mode is not legacy, standard, or adaptive' do
        ENV['AWS_RETRY_MODE'] = 'peccy'
        expect { client }.to raise_error(ArgumentError)
      end

      it 'defaults config.max_attempts to 3' do
        expect(client.config.max_attempts).to eq(3)
      end

      it 'can configure max_attempts with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:max_attempts).and_return(5)
        expect(client.config.max_attempts).to eq(5)
      end

      it 'can configure max_attempts using ENV with precedence over config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:max_attempts).and_return(3)
        ENV['AWS_MAX_ATTEMPTS'] = 1
        expect(client.config.max_attempts).to eq(1)
      end

      it 'raises when max_attempts is not an integer' do
        ENV['AWS_MAX_ATTEMPTS'] = 'string'
        expect { client }.to raise_error(ArgumentError)
      end

      it 'raises when max_attempts is not >= 0' do
        ENV['AWS_MAX_ATTEMPTS'] = -1
        expect { client }.to raise_error(ArgumentError)
      end
    end
  end
end

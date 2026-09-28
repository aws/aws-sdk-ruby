# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module DynamoDB
    describe Plugins::ExtendedRetries do
      let(:client) do
        Client.new(
          region: 'us-east-1',
          credentials_provider: Aws::StaticCredentialsProvider.new(
            credentials: Aws::Credentials.new(access_key_id: 'akid', secret_access_key: 'secret')
          )
        )
      end

      it 'defaults max_attempts to 4' do
        expect(client.config.max_attempts).to eq(4)
      end

      it 'defaults retry_backoff_scalar to 0.025' do
        expect(client.config.retry_backoff_scalar).to eq(0.025)
      end

      it 'retries up to 4 attempts total' do
        allow(Kernel).to receive(:sleep)
        call_count = 0
        client.handle(step: :send) do |context|
          call_count += 1
          context.http_response.signal_done(status_code: 500, headers: {}, body: '')
          Smithy::Client::Response.new(context: context)
        end

        expect { client.list_tables }.to raise_error(Smithy::Client::ServiceError)
        expect(call_count).to eq(4)
      end
    end
  end
end

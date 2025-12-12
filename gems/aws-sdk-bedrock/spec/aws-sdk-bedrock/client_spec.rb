# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Bedrock
    describe Client do
      before do
        ENV.keep_if { |k, _| k == 'PATH' }
      end

      def metrics_from_user_agent_header(resp)
        header = resp.context.http_request.headers['User-Agent']
        metrics = header.match(%r{ m/([A-Za-z0-9+-,]+)})
        return [] if metrics.nil?

        metrics[1].split(',')
      end

      it 'uses a bearer token from the environment' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(stub_responses: true, bearer_token_provider: nil)
        expect(client.config.bearer_token_provider.identity.token).to eq('bedrock-token')
        resp = client.list_imported_models
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer bedrock-token')
      end

      it 'does not use a token for a different service' do
        ENV['AWS_BEARER_TOKEN_FOO'] = 'foo-token'
        client = Client.new(stub_responses: true, bearer_token_provider: nil)
        expect(client.config.bearer_token_provider).to be_nil
        resp = client.list_imported_models
        expect(resp.context.http_request.headers['Authorization']).to_not eq('Bearer foo-token')
      end

      it 'still prefers bearer token when given an auth scheme preference' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        ENV['AWS_AUTH_SCHEME_PREFERENCE'] = 'sigv4,httpBearerAuth'
        client = Client.new(stub_responses: true, bearer_token_provider: nil)
        resp = client.list_imported_models
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer bedrock-token')
      end

      it 'uses explicit config over the environment token' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(
          stub_responses: true,
          bearer_token_provider: BearerTokenProvider.new(token: 'explicit-code-token')
        )
        resp = client.list_imported_models
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer explicit-code-token')
      end

      it 'sets a user agent metric' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(stub_responses: true, bearer_token_provider: nil)
        resp = client.list_imported_models
        metrics = metrics_from_user_agent_header(resp)
        expect(metrics).to include('3')
      end

      it 'does not set a user agent metric when using a token from code' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(
          stub_responses: true,
          bearer_token_provider: BearerTokenProvider.new(token: 'explicit-code-token')
        )
        resp = client.list_imported_models
        metrics = metrics_from_user_agent_header(resp)
        expect(metrics).to_not include('3')
      end
    end
  end
end

# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module Bedrock
    describe Client do
      it 'uses a bearer token from the environment' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(stub_responses: true, token_provider: nil)
        expect(client.config.token_provider.token.token).to eq('bedrock-token')
        resp = client.list_imported_models
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer bedrock-token')
      end

      it 'does not use a token for a different service' do
        ENV['AWS_BEARER_TOKEN_FOO'] = 'foo-token'
        client = Client.new(stub_responses: true, token_provider: nil)
        expect(client.config.token_provider).to be_nil
        resp = client.list_imported_models
        expect(resp.context.http_request.headers['Authorization']).to_not eq('Bearer foo-token')
      end

      it 'still prefers bearer token when given an auth scheme preference' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        ENV['AWS_AUTH_SCHEME_PREFERENCE'] = 'sigv4,httpBearerAuth'
        client = Client.new(stub_responses: true, token_provider: nil)
        resp = client.list_imported_models
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer bedrock-token')
      end

      it 'uses explicit config over the environment token' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(
          stub_responses: true,
          token_provider: Aws::StaticTokenProvider.new('explicit-code-token')
        )
        resp = client.list_imported_models
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer explicit-code-token')
      end
    end
  end
end

# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module BedrockRuntime
    describe Client do
      def metrics_from_user_agent_header(resp)
        header = resp.context.http_request.headers['User-Agent']
        header.match(%r{ m/([A-Za-z0-9+-,]+)})[1].split(',')
      end

      def invoke_model(client)
        stub = client.stub_data(:invoke_model, body: 'test')
        client.stub_responses(:invoke_model, stub)
        client.invoke_model(model_id: 'test')
      end

      it 'uses a bearer token from the environment' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(stub_responses: true, token_provider: nil)
        expect(client.config.token_provider.token.token).to eq('bedrock-token')
        resp = invoke_model(client)
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer bedrock-token')
      end

      it 'does not use a token for a different service' do
        ENV['AWS_BEARER_TOKEN_FOO'] = 'foo-token'
        client = Client.new(stub_responses: true, token_provider: nil)
        expect(client.config.token_provider).to be_nil
        resp = invoke_model(client)
        expect(resp.context.http_request.headers['Authorization']).to_not eq('Bearer foo-token')
      end

      it 'still prefers bearer token when given an auth scheme preference' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        ENV['AWS_AUTH_SCHEME_PREFERENCE'] = 'sigv4,httpBearerAuth'
        client = Client.new(stub_responses: true, token_provider: nil)
        resp = invoke_model(client)
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer bedrock-token')
      end

      it 'uses explicit config over the environment token' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(
          stub_responses: true,
          token_provider: Aws::StaticTokenProvider.new('explicit-code-token')
        )
        resp = invoke_model(client)
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer explicit-code-token')
      end

      it 'sets a user agent metric' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(stub_responses: true, token_provider: nil)
        resp = invoke_model(client)
        metrics = metrics_from_user_agent_header(resp)
        expect(metrics).to include('3')
      end

      it 'does not set a user agent metric when using a token from code' do
        ENV['AWS_BEARER_TOKEN_BEDROCK'] = 'bedrock-token'
        client = Client.new(
          stub_responses: true,
          token_provider: Aws::StaticTokenProvider.new('explicit-code-token')
        )
        resp = invoke_model(client)
        metrics = metrics_from_user_agent_header(resp)
        expect(metrics).to_not include('3')
      end
    end
  end
end

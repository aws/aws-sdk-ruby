# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe BearerAuthorization do

      let(:api) do
        JSON.parse(<<API)
{
  "version":"2.0",
  "metadata":{
    "endpointPrefix":"svc",
    "protocol": "rest-json",
    "signatureVersion":"bearer"
  },
  "operations": {
    "ExampleOperation": {
      "name": "ExampleOperation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {"shape": "Request"}
    },
    "NoAuth": {
      "name": "NoAuth",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {"shape": "Request"},
      "authtype":"none"
    },
    "Sigv4Auth": {
      "name": "Sigv4Auth",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {"shape": "Request"},
      "authtype":"v4"
    }
  },
  "shapes": {
    "Request": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "Value"
        },
        "AuthHeader": {
          "shape": "Value",
          "location": "header",
          "locationName": "Authorization"
        }
      }
    },
    "Value": {"type": "string"}
  }
}
API
      end

      let(:svc) { ApiHelper.sample_service(api: api) }

      let(:token) { 'token' }
      let(:token_provider) { Aws::StaticTokenProvider.new(token) }
      let(:endpoint) { 'https://svc.us-west-2.amazonaws.com' }

      let(:client) do
        svc::Client.new(
          region: 'us-west-2',
          stub_responses: true,
          token_provider: token_provider,
          endpoint: endpoint
        )
      end

      context 'token provider is not set' do
        let(:token_provider) { nil }

        it 'raises an error when attempting to sign a request w/out token provider' do
          expect {
            client.example_operation
          }.to raise_error(Errors::MissingBearerTokenError)
        end
      end

      context 'non https endpoint' do
        let(:endpoint) { 'http://notsecure.com' }

        it 'raises an error when attempting to sign a request w/out token provider' do
          expect {
            client.example_operation
          }.to raise_error(ArgumentError)
        end
      end

      context 'Minimal bearer auth case' do
        let(:token) { 'mF_9.B5f-4.1JqM' }

        it 'sets the Authorization header' do
          resp = client.example_operation
          expect(resp.context.http_request.headers['Authorization']).to eq('Bearer mF_9.B5f-4.1JqM')
        end
      end

      context 'Longer token case' do
        let(:token) { 'eW91J3JlIG5vdCBzdXBwb3NlZCB0byBkZWNvZGUgdGhpcyE=' }

        it 'sets the Authorization header' do
          resp = client.example_operation
          expect(resp.context.http_request.headers['Authorization'])
            .to eq('Bearer eW91J3JlIG5vdCBzdXBwb3NlZCB0byBkZWNvZGUgdGhpcyE=')
        end
      end

      context 'Header already set on the request' do
        let(:token) { 'mF_9.B5f-4.1JqM' }

        it 'overrides existing header' do
          resp = client.example_operation(auth_header: 'Bearer foo')
          expect(resp.context.http_request.headers['Authorization']).to eq('Bearer mF_9.B5f-4.1JqM')
        end
      end

      context 'operation with authtype v4' do
        it 'sets the Authorization header' do
          resp = client.sigv_4_auth
          expect(resp.context.http_request.headers['Authorization']).to include('AWS4-HMAC-SHA256')
        end
      end

      context 'operation with authtype none' do
        it 'does not set the Authorization header' do
          resp = client.no_auth
          expect(resp.context.http_request.headers.key?('Authorization')).to be_falsey
        end
      end
    end
  end
end

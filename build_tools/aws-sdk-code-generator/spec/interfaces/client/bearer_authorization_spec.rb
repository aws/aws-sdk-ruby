# frozen_string_literal: true

require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'SignatureVersion: bearer' do
    before(:all) do
      SpecHelper.generate_service(['BearerAuth'], multiple_files: false)
    end

    let(:token) { 'token' }

    let(:token_provider) { Aws::StaticTokenProvider.new(token) }

    let(:client) do
      BearerAuth::Client.new(
        region: 'us-west-2',
        stub_responses: true,
        token_provider: token_provider,
        endpoint: 'https://svc.us-west-2.amazonaws.com'
      )
    end

    describe '#bearer_auth' do
      it 'sets the Authorization header' do
        client.stub_responses(:bearer_auth, -> (context) {
          expect(context.http_request.headers['Authorization']).to eq('Bearer token')
        })
        client.bearer_auth
      end
    end

    describe '#sigv_4_auth' do
      it 'sets the Authorization header' do
        client.stub_responses(:sigv_4_auth, -> (context) {
          expect(context.http_request.headers['Authorization']).to include('AWS4-HMAC-SHA256')
        })
        client.sigv_4_auth
      end
    end

    describe '#no_auth' do
      it 'does not set the Authorization header' do
        client.stub_responses(:no_auth, -> (context) {
          expect(context.http_request.headers.key?('Authorization')).to be_falsey
        })
        client.no_auth
      end
    end
  end

  describe 'SignatureVersion: v4' do
    before(:all) do
      SpecHelper.generate_service(['V4WithBearer'], multiple_files: false)
    end

    let(:token) { 'token' }

    let(:token_provider) { Aws::StaticTokenProvider.new(token) }

    let(:client) do
      V4WithBearer::Client.new(
        region: 'us-west-2',
        stub_responses: true,
        token_provider: token_provider,
        endpoint: 'https://svc.us-west-2.amazonaws.com'
      )
    end

    describe '#bearer_auth' do
      it 'sets the Authorization header' do
        resp = client.bearer_auth
        expect(resp.context.http_request.headers['Authorization']).to eq('Bearer token')
      end
    end

    describe '#sigv_4_auth' do
      it 'sets the Authorization header' do
        resp = client.sigv_4_auth
        expect(resp.context.http_request.headers['Authorization']).to include('AWS4-HMAC-SHA256')
      end
    end

    describe '#no_auth' do
      it 'does not set the Authorization header' do
        resp = client.no_auth
        expect(resp.context.http_request.headers.key?('Authorization')).to be_falsey
      end
    end
  end

end

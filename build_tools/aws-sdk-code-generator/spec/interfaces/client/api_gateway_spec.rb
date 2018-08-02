require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'API Gateway white label SDK' do

    before(:all) do
       SpecHelper.generate_service(['WhiteLabel'], multiple_files: false, custom: true)
    end

    let(:creds) {
      Aws::Credentials.new('akid', 'secret')
    }
    let(:client) {
      WhiteLabel::Client.new(
        stub_responses: true,
      )
    }
    let(:client_w_token) {
      WhiteLabel::Client.new(
        stub_responses: true,
        authorizer_token: 'my-fancy-token'
      )
    }
    let(:client_w_token_creds) {
      WhiteLabel::Client.new(
        stub_responses: true,
        credentials: creds,
        authorizer_token: 'my-fancy-token'
      )
    }

    it 'allows empty operation clients' do
      expect {
        SpecHelper.generate_service(['WhiteLabelEmpty'], multiple_files: false, custom: true)
        WhiteLabelEmpty::Client.new(
          stub_responses: true
        )
      }.to raise_error("no operations found for the service")
    end

    it 'detects invalid shape_ref' do
      expect {
        SpecHelper.generate_service(['WhiteLabelInvalid'], multiple_files: false, custom: true)
        WhiteLabelEmpty::Client.new(
          stub_responses: true
        )
      }.to raise_error("cannot locate shape ShapeFoo")
    end

    it 'populates x-api-key header correctly' do
      resp = client.put_apikey({
        scalar_types: {
          string_member: 'foo'
        },
        api_key: 'foobarbaz'
      })
      expect(resp.context.http_request.headers['x-api-key']).to eq('foobarbaz')

      resp = client.get_noauth_errors({
        error_type: 'AnError'
      })
      expect(resp.context.http_request.headers['x-api-key']).to be_nil

      expect {
        client.get_noauth_errors({
          error_type: 'AnError',
          api_key: 'ThisWontWork'
        })
      }.to raise_error(ArgumentError, 'unexpected value at params[:api_key]')
    end

    it 'add user-agent when not provided' do
      resp = client.put_apikey({
        scalar_types: {
          boolean_member: false,
        }
      })
      expect(resp.context.http_request.headers['User-Agent']).to start_with('aws-apig-ruby')

      resp = client.get_noauth_errors({
        error_type: 'AnError'
      })
      expect(resp.context.http_request.headers['User-Agent']).to start_with('aws-apig-ruby')


      client_w_ua = WhiteLabel::Client.new(
        credentials: creds,
        stub_responses: true,
        user_agent_suffix: 'foo'
      )
      resp = client_w_ua.put_apikey({
        scalar_types: {
          boolean_member: false,
        }
      })
      expect(resp.context.http_request.headers['User-Agent']).to include('foo')
    end

    it 'allows customized authorizer token' do
      resp = client_w_token.put_customauth_scalars(scalar_types: {})
      expect(resp.context.http_request.headers['Authorization']).to eq('my-fancy-token')
    end

    it 'use custom authorizer with `custom` authtype only' do
      resp = client_w_token_creds.put_iamauth_scalars(scalar_types: { string_member: "foo"})
      expect(resp.context.http_request.headers['Authorization']).to include('akid')
    end

  end
end

# frozen_string_literal: true

require_relative '../../spec_helper'
require 'aws-sigv2'
require 'aws-sdk-core/plugins/signature_v2'

module Aws
  module Plugins
    describe SignatureV2 do
      let(:credentials) { Credentials.new('AKID-SIGNER', 'secret', 'token') }
      let(:config) do
        double('config', v2_signer: Aws::Sigv2::Signer.new(credentials_provider: credentials))
      end
      let(:context) do
        Seahorse::Client::RequestContext.new(config: config).tap do |ctx|
          ctx.http_request.http_method = 'POST'
          ctx.http_request.endpoint = URI('https://sdb.amazonaws.com/')
          params = Aws::Query::ParamList.new
          params.set('Action', 'ListDomains')
          ctx.http_request.body = params.to_io
        end
      end

      it 'records the signing credentials so the retry layer can invalidate them' do
        handler = SignatureV2::Handler.new(->(ctx) { Seahorse::Client::Response.new(context: ctx) })
        handler.call(context)

        expect(context[:signing_credentials]).to be_a(Credentials)
        expect(context[:signing_credentials].access_key_id).to eq('AKID-SIGNER')
        expect(context[:signing_credentials].secret_access_key).to be_nil
      end
    end
  end
end

require_relative '../spec_helper'

module Aws
  module EventBridge
    describe Client do
      let(:region) { 'us-east-1' }
      let(:use_fips_endpoint) { false }
      let(:use_dualstack_endpoint) { false }
      let(:client) do
        Client.new(
          stub_responses: true, region: region,
          use_dualstack_endpoint: use_dualstack_endpoint,
          use_fips_endpoint: use_fips_endpoint
        )
      end
      let(:event) do
        {
          time: Time.now,
          source: "source",
        }
      end
      let(:entries) { [event] }

      def expect_sigv4a_signer(region='*')
        mock_signature = Aws::Sigv4::Signature.new(headers: {})
        mock_signer = double('sigv4a_signer', sign_request: mock_signature)

        expect(Aws::Sigv4::Signer).to receive(:new)
          .with(hash_including(region: region, signing_algorithm: :sigv4a))
          .and_return(mock_signer)
      end

      it 'does not update the endpoint when endpoint_id is not set' do
        resp = client.put_events(entries: entries)
        expect(resp.context.http_request.endpoint.host).to eq('events.us-east-1.amazonaws.com')
      end

      it 'it updates the endpoint, signs with sigv4a and uses the global region when endpoint_id is set ' do
        expect_sigv4a_signer('*')
        resp = client.put_events(entries: entries, endpoint_id: 'abc123.456def')
        expect(resp.context.http_request.endpoint.host).to eq('abc123.456def.endpoint.events.amazonaws.com')
      end

      it 'raises when given an invalid endpoint_id' do
        expect do
          client.put_events(entries: entries, endpoint_id: 'badactor.com?foo=bar')
        end.to raise_error(ArgumentError, /valid host label/)
      end

      it 'raises when given an empty endpoint_id' do
        expect do
          client.put_events(entries: entries, endpoint_id: '')
        end.to raise_error(ArgumentError, /valid host label/)
      end

      context 'use_dualstack_endpoint' do
        let(:use_dualstack_endpoint) { true }

        it 'does not update the endpoint when endpoint_id is not set' do
          resp = client.put_events(entries: entries)
          expect(resp.context.http_request.endpoint.host).to eq('events.us-east-1.api.aws')
        end

        it 'uses the dualstack dnsSuffix when endpoint_id is set' do
          expect_sigv4a_signer('*')
          resp = client.put_events(entries: entries, endpoint_id: 'abc123.456def')
          expect(resp.context.http_request.endpoint.host).to eq('abc123.456def.endpoint.events.api.aws')
        end
      end

      context 'use_fips_endpoint' do
        let(:use_fips_endpoint) { true }

        it 'does not update the endpoint when endpoint_id is not set' do
          resp = client.put_events(entries: entries)
          expect(resp.context.http_request.endpoint.host).to eq('events-fips.us-east-1.amazonaws.com')
        end

        it 'raises when endpoint_id and use_fips_endpoint are set' do
          expect do
            client.put_events(entries: entries, endpoint_id: 'abc123.456def')
          end.to raise_error(ArgumentError)
        end
      end

      context 'use_fips_endpoint and use_dualstack_endpoint' do
        let(:use_fips_endpoint) { true }
        let(:use_dualstack_endpoint) { true }

        it 'does not update the endpoint when endpoint_id is not set' do
          resp = client.put_events(entries: entries)
          expect(resp.context.http_request.endpoint.host).to eq('events-fips.us-east-1.api.aws')
        end

        it 'raises when endpoint_id and use_fips_endpoint are set' do
          expect do
            client.put_events(entries: entries, endpoint_id: 'abc123.456def')
          end.to raise_error(ArgumentError)
        end
      end

      context 'aws-iso partition' do
        let(:region) { 'us-iso-east-1' }

        it 'does not update the endpoint when endpoint_id is not set' do
          resp = client.put_events(entries: entries)
          expect(resp.context.http_request.endpoint.host).to eq('events.us-iso-east-1.c2s.ic.gov')
        end

        it 'it updates the endpoint, signs with sigv4a and uses the global region when endpoint_id is set ' do
          expect_sigv4a_signer('*')
          resp = client.put_events(entries: entries, endpoint_id: 'abc123.456def')
          expect(resp.context.http_request.endpoint.host).to eq('abc123.456def.endpoint.events.c2s.ic.gov')
        end
      end

      context 'custom endpoint' do
        let(:custom_endpoint) { 'https://example.org' }
        let(:client) { Client.new(endpoint: custom_endpoint, stub_responses: true, region: region) }

        it 'uses the custom endpoint when endpoint_id is not set' do
          resp = client.put_events(entries: entries)
          expect(resp.context.http_request.endpoint.host).to eq('example.org')
        end

        it 'does not modify the custom endpoint when endpoint_id is set' do
          expect_sigv4a_signer('*')
          resp = client.put_events(entries: entries, endpoint_id: 'abc123.456def')
          expect(resp.context.http_request.endpoint.host).to eq('example.org')
        end
      end
    end
  end
end

# frozen_string_literal: true

require_relative '../spec_helper'
require 'stringio'

module Aws
  module S3
    describe Client do
      let(:client_opts) do
        {
          region: 'us-east-1',
          credentials: Credentials.new('akid', 'secret')
        }
      end

      let(:client) { Client.new(client_opts) }

      let(:auth_header_malformed_body) do 
       '<?xml version="1.0" encoding="UTF-8"?>\n<Error><Code>'\
       'AuthorizationHeaderMalformed</Code><Message>The '\
       "authorization header is malformed; the region 'us-west-2' is"\
       "wrong; expecting 'eu-central-1'</Message><Region>"\
       'eu-central-1</Region><RequestId>531B68B3613F5C96</RequestId>'\
       '<HostId>TMnOREh0Ms0touCRX0XkJinw7xqsF0v/iFyA+nCC4d3PpF+k2oek'\
       'WlSrUk+8d2/rvcnEv2QXer0=</HostId></Error>'
      end

      before(:each) do
        allow($stderr).to receive(:write)
        S3::BUCKET_REGIONS.clear
      end

      context 'accessing eu-central-1 bucket using classic endpoint and wrong'\
              'sigv4 region' do
        before(:each) do
          stub_request(:put, 'https://bucket.s3.us-west-2.amazonaws.com/key')
            .to_return(status: [400, 'Bad Request'], body: auth_header_malformed_body)

          stub_request(
            :put, 'https://bucket.s3-fips.us-west-2.amazonaws.com/keya'
          ).to_return(status: [400, 'Bad Request'], body: auth_header_malformed_body)

          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key')
            .to_return(status: [200, 'Ok'])

          stub_request(
            :put, 'https://bucket.s3-fips.us-west-2.amazonaws.com/key'
          ).to_return(
            status: [307, 'Temporary Redirect'],
            headers: {
              'Location' => 'https://bucket.s3.eu-central-1.amazonaws.com/key'
            }
          )
        end

        it 'detects the moved permanently and redirects' do
          client = S3::Client.new(client_opts.merge(region: 'us-west-2'))
          expect_any_instance_of(Plugins::S3Signer::BucketRegionErrorHandler).to receive(:warn)
          resp = client.put_object(bucket: 'bucket', key: 'key', body: 'body')
          host = resp.context.http_request.endpoint.host
          expect(host).to eq('bucket.s3.eu-central-1.amazonaws.com')
        end

        it 'never redirect fips endpoints' do
          client = S3::Client.new(
            client_opts.merge(
              region: 'us-west-2',
              endpoint: 'https://s3-fips.us-west-2.amazonaws.com'
            )
          )
          expect do
            client.put_object(bucket: 'bucket', key: 'key', body: 'body')
          end.to raise_error(Aws::S3::Errors::Http307Error)
        end

        it 'never fix endpoint for fips regions' do
          client = S3::Client.new(
            client_opts.merge(
              region: 'us-west-2',
              endpoint: 'https://s3-fips.us-west-2.amazonaws.com'
            )
          )
          expect do
            client.put_object(bucket: 'bucket', key: 'keya', body: 'body')
          end.to raise_error(Aws::S3::Errors::AuthorizationHeaderMalformed)
        end
      end

      context 'using custom endpoint and wrong sigv4 region' do
        before(:each) do
          stub_request(:put, 'http://bucket.localhost:9000/key')
            .to_return(status: [400, 'Bad Request'], body: auth_header_malformed_body)
        end

        it 'doesnt retry with a new endpoint' do
          client = S3::Client.new(
            client_opts.merge(
              region: 'us-west-2',
              endpoint: 'http://localhost:9000'
            )
          )
          expect do
            client.put_object(bucket: 'bucket', key: 'key', body: 'body')
          end.to raise_error(Aws::S3::Errors::AuthorizationHeaderMalformed)
        end
      end

      describe 'Client Side Monitoring' do
        let(:stub_publisher) do
          StubPublisher.new
        end

        let(:client_opts) do
          {
            region: 'us-west-2',
            credentials: Credentials.new('akid', 'secret'),
            client_side_monitoring: true,
            client_side_monitoring_publisher: stub_publisher
          }
        end

        let(:client) { Client.new(client_opts) }

        before(:each) do
          stub_publisher.metrics = []
        end

        it 'updates fqdn and region in metrics when a 400 redirect occurs' do
          stub_request(:put, 'https://bucket.s3.us-west-2.amazonaws.com/key')
            .to_return(status: [400, 'Bad Request'], body: auth_header_malformed_body)
          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key')
            .to_return(status: [200, 'Ok'])

          expect_any_instance_of(Plugins::S3Signer::BucketRegionErrorHandler).to receive(:warn)

          client.put_object(bucket: 'bucket', key: 'key', body: 'body')
          expect(stub_publisher.metrics.size).to eq(1)
          metric = stub_publisher.metrics.first
          expect(metric.api_call.region).to eq('eu-central-1')
          expect(metric.api_call_attempts.size).to eq(2)
          fail_attempt = metric.api_call_attempts[0]
          good_attempt = metric.api_call_attempts[1]
          expect(fail_attempt.region).to eq('us-west-2')
          expect(fail_attempt.fqdn).to eq('bucket.s3.us-west-2.amazonaws.com')
          expect(fail_attempt.http_status_code).to eq(400)
          expect(good_attempt.region).to eq('eu-central-1')
          expect(good_attempt.fqdn).to eq(
            'bucket.s3.eu-central-1.amazonaws.com'
          )
          expect(good_attempt.http_status_code).to eq(200)
        end

        it 'handles 307 redirects' do
          stub_request(:put, 'https://bucket.s3.us-west-2.amazonaws.com/key')
            .to_return(
              status: [307, 'Temporary Redirect'],
              headers: {
                'Location' => 'https://bucket.s3.eu-central-1.amazonaws.com/key'
              }
            )
          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key')
            .to_return(status: [200, 'Ok'])
          client.put_object(bucket: 'bucket', key: 'key', body: 'body')
          expect(stub_publisher.metrics.size).to eq(1)
          metric = stub_publisher.metrics.first
          expect(metric.api_call.region).to eq('us-west-2')
          expect(metric.api_call_attempts.size).to eq(2)
          fail_attempt = metric.api_call_attempts[0]
          good_attempt = metric.api_call_attempts[1]
          expect(fail_attempt.region).to eq('us-west-2')
          expect(fail_attempt.fqdn).to eq('bucket.s3.us-west-2.amazonaws.com')
          expect(fail_attempt.http_status_code).to eq(307)
          expect(good_attempt.region).to eq('us-west-2')
          expect(good_attempt.fqdn).to eq(
            'bucket.s3.eu-central-1.amazonaws.com'
          )
          expect(good_attempt.http_status_code).to eq(200)
        end
      end
    end

    class StubPublisher
      attr_accessor :metrics
      attr_accessor :agent_port
      attr_accessor :agent_host

      def initialize
        @metrics = []
      end

      def publish(request_metrics)
        @metrics << request_metrics
      end
    end
  end
end

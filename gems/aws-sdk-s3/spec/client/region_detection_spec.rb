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

      before(:each) do
        allow($stderr).to receive(:write)
        S3::BUCKET_REGIONS.clear
      end

      context 'accessing a bucket in eu-central-1 with wrong region' do
        before(:each) do
          body = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>"\
                 'PermanentRedirect</Code><Message>The bucket you are '\
                 'attempting to access must be addressed using the specified '\
                 'endpoint. Please send all future requests to this endpoint.'\
                 '</Message><RequestId>A9D9FE127C48F985</RequestId><Bucket>'\
                 'aws-sdk-fra</Bucket><HostId>1ErVsdg5tuC0lg2JQiB3FCd7K7blTR3V'\
                 'MH14Pm3405voMEIQftv8bi4nhpYbn3B4</HostId><Endpoint>'\
                 'aws-sdk-fra.s3.eu-central-1.amazonaws.com</Endpoint></Error>'
          stub_request(:put, 'https://bucket.s3.us-west-2.amazonaws.com/key')
            .to_return(status: [301, 'Moved Permanently'], body: body)

          stub_request(:put, 'https://bucket.s3.external-1.amazonaws.com/key')
            .to_return(
              status: [307, 'Temporary Redirect'],
              headers: {
                'Location' => 'https://bucket.s3.eu-central-1.amazonaws.com/key'
              }
            )

          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key')
            .to_return(status: [200, 'Ok'])
        end
      end

      context 'accessing eu-central-1 bucket using classic endpoint and wrong'\
        'sigv4 region' do
        before(:each) do
          body = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>"\
                 'AuthorizationHeaderMalformed</Code><Message>The '\
                 "authorization header is malformed; the region 'us-west-2' is"\
                 "wrong; expecting 'eu-central-1'</Message><Region>"\
                 'eu-central-1</Region><RequestId>531B68B3613F5C96</RequestId>'\
                 '<HostId>TMnOREh0Ms0touCRX0XkJinw7xqsF0v/iFyA+nCC4d3PpF+k2oek'\
                 'WlSrUk+8d2/rvcnEv2QXer0=</HostId></Error>'
          stub_request(:put, 'https://bucket.s3.us-west-2.amazonaws.com/key')
            .to_return(status: [400, 'Bad Request'], body: body)

          stub_request(
            :put, 'https://bucket.s3-fips.us-west-2.amazonaws.com/keya'
          ).to_return(status: [400, 'Bad Request'], body: body)

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
          client = S3::Client.new(client_opts.merge(
                                    region: 'us-west-2'
                                  ))
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
          body = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>"\
                 'AuthorizationHeaderMalformed</Code><Message>The '\
                 "authorization header is malformed; the region 'us-west-2' is"\
                 "wrong; expecting 'eu-central-1'</Message><Region>"\
                 'eu-central-1</Region><RequestId>531B68B3613F5C96</RequestId>'\
                 '<HostId>TMnOREh0Ms0touCRX0XkJinw7xqsF0v/iFyA+nCC4d3PpF+k2oek'\
                 'WlSrUk+8d2/rvcnEv2QXer0=</HostId></Error>'

          stub_request(:put, 'https://bucket.s3.us-west-2.amazonaws.com/key')
            .to_return(status: [400, 'Bad Request'], body: body)
          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key')
            .to_return(status: [200, 'Ok'])
          resp = client.put_object(bucket: 'bucket', key: 'key', body: 'body')
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

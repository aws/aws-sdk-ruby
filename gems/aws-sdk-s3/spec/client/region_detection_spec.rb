require_relative '../spec_helper'
require 'stringio'

module Aws
  module S3
    describe Client do

      let(:client_opts) {{
        region: 'us-east-1',
        credentials: Credentials.new('akid', 'secret'),
      }}

      let(:client) { Client.new(client_opts) }

      before(:each) do
        allow($stderr).to receive(:write)
        S3::BUCKET_REGIONS.clear
      end

      describe 'accessing a bucket in eu-central-1 with wrong region' do

        before(:each) do

          stub_request(:put, 'https://bucket.s3.us-west-2.amazonaws.com/key').
            to_return(status: [301, 'Moved Permanently'], body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code><Message>The bucket you are attempting to access must be addressed using the specified endpoint. Please send all future requests to this endpoint.</Message><RequestId>A9D9FE127C48F985</RequestId><Bucket>aws-sdk-fra</Bucket><HostId>1ErVsdg5tuC0lg2JQiB3FCd7K7blTR3VMH14Pm3405voMEIQftv8bi4nhpYbn3B4</HostId><Endpoint>aws-sdk-fra.s3.eu-central-1.amazonaws.com</Endpoint></Error>")

          stub_request(:put, 'https://bucket.s3.external-1.amazonaws.com/key').
            to_return(status: [307, 'Temporary Redirect'], headers: {
              'Location' => 'https://bucket.s3.eu-central-1.amazonaws.com/key'
            })

          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key').
            to_return(status: [200, 'Ok'])

        end

      end

      describe 'accessing eu-central-1 bucket using classic endpoint and wrong sigv4 region' do

        before(:each) do

          stub_request(:put, 'https://bucket.s3.us-west-2.amazonaws.com/key').
            to_return(status: [400, 'Bad Request'], body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>AuthorizationHeaderMalformed</Code><Message>The authorization header is malformed; the region 'us-east-1' is wrong; expecting 'eu-central-1'</Message><Region>eu-central-1</Region><RequestId>531B68B3613F5C96</RequestId><HostId>TMnOREh0Ms0touCRX0XkJinw7xqsF0v/iFyA+nCC4d3PpF+k2oekWlSrUk+8d2/rvcnEv2QXer0=</HostId></Error>")

          stub_request(:put, 'https://bucket.s3-fips.us-west-2.amazonaws.com/keya').
            to_return(status: [400, 'Bad Request'], body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>AuthorizationHeaderMalformed</Code><Message>The authorization header is malformed; the region 'us-west-2' is wrong; expecting 'eu-central-1'</Message><Region>eu-central-1</Region><RequestId>531B68B3613F5C96</RequestId><HostId>TMnOREh0Ms0touCRX0XkJinw7xqsF0v/iFyA+nCC4d3PpF+k2oekWlSrUk+8d2/rvcnEv2QXer0=</HostId></Error>")

          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key').
            to_return(status: [200, 'Ok'])

          stub_request(:put, 'https://bucket.s3-fips.us-west-2.amazonaws.com/key').
            to_return(status: [307, 'Temporary Redirect'], headers: {
              'Location' => 'https://bucket.s3.eu-central-1.amazonaws.com/key'
            })

        end

        it 'detects the moved permanently and redirects' do
          client = S3::Client.new(client_opts.merge(
            region: 'us-west-2')
          )
          resp = client.put_object(bucket:'bucket', key:'key', body:'body')
          host = resp.context.http_request.endpoint.host
          expect(host).to eq('bucket.s3.eu-central-1.amazonaws.com')
        end

        it 'never redirect fips endpoints' do
          client = S3::Client.new(client_opts.merge(
            region: 'us-west-2', endpoint: 'https://s3-fips.us-west-2.amazonaws.com')
          )
          expect {
            client.put_object(bucket:'bucket', key:'key', body:'body')
          }.to raise_error(Aws::S3::Errors::Http307Error)

        end

        it 'never fix endpoint for fips regions' do
          client = S3::Client.new(client_opts.merge(
            region: 'us-west-2', endpoint: 'https://s3-fips.us-west-2.amazonaws.com')
          )
          expect {
            client.put_object(bucket:'bucket', key:'keya', body:'body')
          }.to raise_error(Aws::S3::Errors::AuthorizationHeaderMalformed)
        end

      end
    end
  end
end

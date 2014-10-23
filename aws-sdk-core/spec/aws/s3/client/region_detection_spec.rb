require 'spec_helper'
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

      describe 'accessing eu-central-1 via classic endpoint and sigv2' do

        before(:each) do

          stub_request(:put, 'https://bucket.s3.amazonaws.com/key').
            to_return(status: [400, 'Bad Request'], body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>InvalidRequest</Code><Message>The authorization mechanism you have provided is not supported. Please use AWS4-HMAC-SHA256.</Message><RequestId>164473A33C2BACDF</RequestId><HostId>I8hhmfGvN74WPyu6kduBoVhnHPgKATFF4nWlro8kRdpuFxXVgcRgLZ2oTxJFhZMgAn75GqyhUHY=</HostId></Error>")

          stub_request(:put, 'https://bucket.s3-external-1.amazonaws.com/key').
            to_return(status: [307, 'Temporary Redirect'], headers: {
              'Location' => 'https://bucket.s3.eu-central-1.amazonaws.com/key'
            })

          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key').
            to_return(status: [200, 'Ok'])

        end

        it 'detects the sigv4 error, determines actual region and redirects' do
          resp = client.put_object(bucket:'bucket', key:'key', body:'body')
          host = resp.context.http_request.endpoint.host
          expect(host).to eq('bucket.s3.eu-central-1.amazonaws.com')
        end

        it 'uses cached regions to determine the actual region' do
          client.put_object(bucket:'bucket', key:'key', body:'body')
          client.put_object(bucket:'bucket', key:'key', body:'body')
          client.put_object(bucket:'bucket', key:'key', body:'body')
        end

        it 'sends a warning to stderr' do
          expect($stderr).to receive(:write).with(<<-WARNING.strip)
S3 client configured for "us-east-1" but the bucket "bucket" is in "eu-central-1"; Please configure the proper region to avoid multiple unecessary redirects and signing attempts
          WARNING
          client.put_object(bucket:'bucket', key:'key', body:'body')
        end

        it 'sends the warning to the logger if configured' do
          logger = double('logger').as_null_object
          expect(logger).to receive(:warn).with(<<-WARNING.strip)
S3 client configured for "us-east-1" but the bucket "bucket" is in "eu-central-1"; Please configure the proper region to avoid multiple unecessary redirects and signing attempts
          WARNING
          client = S3::Client.new(client_opts.merge(logger: logger))
          client.put_object(bucket:'bucket', key:'key', body:'body')
        end

        it 'triggers a callback where you can listen for new bucket regions' do
          yielded = nil
          S3::BUCKET_REGIONS.bucket_added {|*args| yielded = args }
          client.put_object(bucket:'bucket', key:'key', body:'body')
          expect(yielded).to eq(['bucket', 'eu-central-1'])
        end

        it 'triggers a callback where you can listen for new bucket regions' do
          yielded = nil
          S3::BUCKET_REGIONS.bucket_added {|*args| yielded = args }
          client.put_object(bucket:'bucket', key:'key', body:'body')
          expect(yielded).to eq(['bucket', 'eu-central-1'])
          expect(S3::BUCKET_REGIONS.to_h).to eq('bucket' => 'eu-central-1')

          expect {
            S3::BUCKET_REGIONS.bucket_added
          }.to raise_error(ArgumentError, 'missing required block')
        end

      end

      describe 'accessing a bucket in eu-central-1 with wrong region' do

        before(:each) do

          stub_request(:put, 'https://bucket.s3-us-west-2.amazonaws.com/key').
            to_return(status: [301, 'Moved Permanently'], body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>PermanentRedirect</Code><Message>The bucket you are attempting to access must be addressed using the specified endpoint. Please send all future requests to this endpoint.</Message><RequestId>A9D9FE127C48F985</RequestId><Bucket>aws-sdk-fra</Bucket><HostId>1ErVsdg5tuC0lg2JQiB3FCd7K7blTR3VMH14Pm3405voMEIQftv8bi4nhpYbn3B4</HostId><Endpoint>aws-sdk-fra.s3.eu-central-1.amazonaws.com</Endpoint></Error>")

          stub_request(:put, 'https://bucket.s3-external-1.amazonaws.com/key').
            to_return(status: [307, 'Temporary Redirect'], headers: {
              'Location' => 'https://bucket.s3.eu-central-1.amazonaws.com/key'
            })

          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key').
            to_return(status: [200, 'Ok'])

        end

      end

      describe 'accessing eu-central-1 bucket using classic endpoitn and wrong sigv4 region' do

        before(:each) do

          stub_request(:put, 'https://bucket.s3-us-west-2.amazonaws.com/key').
            to_return(status: [400, 'Bad Request'], body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error><Code>AuthorizationHeaderMalformed</Code><Message>The authorization header is malformed; the region 'us-east-1' is wrong; expecting 'eu-central-1'</Message><Region>eu-central-1</Region><RequestId>531B68B3613F5C96</RequestId><HostId>TMnOREh0Ms0touCRX0XkJinw7xqsF0v/iFyA+nCC4d3PpF+k2oekWlSrUk+8d2/rvcnEv2QXer0=</HostId></Error>")

          stub_request(:put, 'https://bucket.s3.eu-central-1.amazonaws.com/key').
            to_return(status: [200, 'Ok'])

        end

        it 'detects the moved permanently and redirects' do
          client = S3::Client.new(client_opts.merge(
            region: 'us-west-2', signature_version:'v4')
          )
          resp = client.put_object(bucket:'bucket', key:'key', body:'body')
          host = resp.context.http_request.endpoint.host
          expect(host).to eq('bucket.s3.eu-central-1.amazonaws.com')
        end

      end
    end
  end
end

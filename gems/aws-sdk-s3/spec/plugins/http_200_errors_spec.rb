# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    module Plugins
      describe Http200Errors do
        let(:creds) { Aws::Credentials.new('akid', 'secret') }
        let(:client) { S3::Client.new(region: 'us-east-1', credentials: creds, retry_limit: 0) }

        it 'correctly parses error in response body with proper encoding' do
          error_xml = <<~XML
            <?xml version="1.0" encoding="UTF-8"?>
             <Error>
               <Code>NoSuchKey</Code>
               <Message>The specified key does not exist.</Message>
             </Error>
          XML

          stub_request(:post, 'https://test-bucket.s3.amazonaws.com/?delete')
            .to_return(status: 200, body: error_xml, headers: { 'content-type' => 'application/xml' })

          expect { client.delete_objects(bucket: 'test-bucket', delete: { objects: [{ key: 'test' }] }) }
            .to raise_error(Errors::NoSuchKey)
        end

        it 'correctly parses error when incomplete body is given' do
          stub_request(:post, 'https://test-bucket.s3.amazonaws.com/?delete')
            .to_return(status: 200, body: '', headers: { 'content-type' => 'application/xml' })

          expect { client.delete_objects(bucket: 'test-bucket', delete: { objects: [{ key: 'test' }] }) }
            .to raise_error(Seahorse::Client::NetworkingError, /Empty or incomplete response body/)
        end

        it 'gracefully handle non-UTF encoding' do
          response = <<~XML
            <?xml version="1.0" encoding="UTF-8"?>
            <DeleteResult>
            <Deleted>
            <Key>test</Key>
            <ETag>"abc123"</ETag>
            </Deleted>
            </DeleteResult>
          XML

          # No headers to replicate omitted Content-Type header
          stub_request(:post, 'https://test-bucket.s3.amazonaws.com/?delete')
            .to_return(status: 200, body: response, headers: {})

          expect { client.delete_objects(bucket: 'test-bucket', delete: { objects: [{ key: 'test' }] }) }
            .not_to raise_error
        end

      end
    end
  end
end

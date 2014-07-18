require 'spec_helper'
require 'stringio'

module Aws
  module S3
    describe Client do

      let(:credentials) { Credentials.new('akid', 'secret') }

      describe 'empty body error responses' do

        let(:s3) {
          Client.new({
            region: 'us-east-1',
            credentials: credentials,
            retry_limit: 0,
          })
        }

        it 'creates an error class from empty body responses' do
          s3.handle(step: :send) do |context|
            context.http_response.status_code = 500
            context.http_response.body = StringIO.new('')
            Seahorse::Client::Response.new(context: context)
          end
          expect {
            s3.head_bucket(bucket:'aws-sdk')
          }.to raise_error(S3::Errors::Http500Error)
        end

      end

      describe '#create_bucket' do

        it 'omits location constraint for the classic region' do
          s3 = Client.new(region: 'us-east-1', credentials: credentials)
          s3.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end
          resp = s3.create_bucket(bucket: 'aws-sdk')
          expect(resp.context.http_request.body_contents).to eq('')
        end

        it 'populates the bucket location constraint for non-classic regions' do
          s3 = Client.new(region: 'us-west-2', credentials: credentials)
          s3.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end
          resp = s3.create_bucket(bucket: 'aws-sdk')
          expect(resp.context.http_request.body_contents.strip).to eq(<<-XML.strip)
<CreateBucketConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <LocationConstraint>us-west-2</LocationConstraint>
</CreateBucketConfiguration>
          XML
        end

        it 'does not overide bucket location constraint params' do
          s3 = Client.new(region: 'eu-west-1', credentials: credentials)
          s3.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end
          resp = s3.create_bucket(
            bucket: 'aws-sdk',
            create_bucket_configuration: {
              location_constraint: 'EU'
            }
          )
          expect(resp.context.http_request.body_contents.strip).to eq(<<-XML.strip)
<CreateBucketConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <LocationConstraint>EU</LocationConstraint>
</CreateBucketConfiguration>
          XML
        end

      end
    end
  end
end

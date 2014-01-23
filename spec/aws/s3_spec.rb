require 'spec_helper'
require 'stringio'

module Aws
  describe S3 do

    let(:s3) {
      Aws::S3.new(
        credentials: Credentials.new('akid', 'secret'),
        region: 'us-east-1',
        retry_limit: 0,
      )
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
end

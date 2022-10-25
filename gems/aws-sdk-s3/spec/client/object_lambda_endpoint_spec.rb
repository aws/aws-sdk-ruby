# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      describe '#write_get_object_response' do
        it 'uses and signs against the s3-object-lambda host' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect_auth({ 'signingName' => 's3-object-lambda' })
          resp = client.write_get_object_response(
            request_token: 'token',
            request_route: 'route'
          )
          host = 'route.s3-object-lambda.us-west-2.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'uses a custom endpoint and signs against s3-object-lambda' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            endpoint: 'https://my-endpoint.com'
          )
          expect_auth({ 'signingName' => 's3-object-lambda' })
          resp = client.write_get_object_response(
            request_token: 'token',
            request_route: 'route'
          )
          host = 'route.my-endpoint.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with us-east-1 regionalization' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-east-1'
          )
          expect_auth({ 'signingName' => 's3-object-lambda' })
          resp = client.write_get_object_response(
            request_token: 'token',
            request_route: 'route'
          )
          host = 'route.s3-object-lambda.us-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end
      end
    end
  end
end

require_relative '../spec_helper'
require 'stringio'

module Aws
  module S3
    module Plugins
      describe Md5s do
        it 'has a :compute_checksums option that defaults to true' do
          client = Client.new(stub_responses: true)
          expect(client.config.compute_checksums).to be(true)
        end

        it 'can disabled' do
          client = Client.new(stub_responses: true, compute_checksums: false)
          expect(client.config.compute_checksums).to be(false)
        end

        describe '#put_object' do
          it 'computes MD5 of the body and sends it with content-md5 header' do
            client = Client.new(stub_responses: true)
            resp = client.put_object(
              bucket: 'bucket-name',
              key: 'object-key',
              body: 'Hello World!'
            )
            expect(resp.context.http_request.headers['content-md5']).to eq(
              '7Qdih1MuhjZehB6Sv8UNjA=='
            )
          end

          it 'does not compute the MD5 when :compute_checksums is false' do
            client = Client.new(stub_responses: true, compute_checksums: false)
            resp = client.put_object(
              bucket: 'bucket-name',
              key: 'object-key',
              body: 'Hello World!'
            )
            expect(resp.context.http_request.headers['content-md5']).to be(nil)
          end

          it 'skips the md5 when the body is empty' do
            client = Client.new(stub_responses: true)
            resp = client.put_object(
              bucket: 'bucket-name',
              key: 'object-key',
              body: ''
            )
            expect(resp.context.http_request.headers['content-md5']).to be(nil)
          end

          it 'computes the MD5 by reading the body 1MB at a time' do
            body = StringIO.new('.' * 5 * 1024 * 1024) # 5MB
            expect(body).to receive(:read)
              .with(1024 * 1024, any_args).and_call_original
            client = Client.new(stub_responses: true)
            resp = client.put_object(
              bucket: 'bucket-name',
              key: 'object-key',
              body: body # an io-like object
            )
            expect(resp.context.http_request.headers['content-md5']).to eq(
              '+kDD2/74SZx+Rz+/Dw7I1Q=='
            )
          end
        end

        describe '#upload_part' do
          it 'computes MD5 of the body and sends it with content-md5 header' do
            client = Client.new(stub_responses: true)
            resp = client.upload_part(
              bucket: 'bucket-name',
              key: 'object-key',
              upload_id: 'id',
              part_number: 1,
              body: 'Hello World!'
            )
            expect(resp.context.http_request.headers['content-md5']).to eq(
              '7Qdih1MuhjZehB6Sv8UNjA=='
            )
          end

          it 'does not compute the MD5 when :compute_checksums is false' do
            client = Client.new(stub_responses: true, compute_checksums: false)
            resp = client.upload_part(
              bucket: 'bucket-name',
              key: 'object-key',
              upload_id: 'id',
              part_number: 1,
              body: 'Hello World!'
            )
            expect(resp.context.http_request.headers['content-md5']).to be(nil)
          end

          it 'skips the md5 when the body is empty' do
            client = Client.new(stub_responses: true)
            resp = client.upload_part(
              bucket: 'bucket-name',
              key: 'object-key',
              upload_id: 'id',
              part_number: 1
            )
            expect(resp.context.http_request.headers['content-md5']).to be(nil)
          end

          it 'computes the MD5 by reading the body 1MB at a time' do
            body = StringIO.new('.' * 5 * 1024 * 1024) # 5MB
            allow(body).to receive(:read)
              .with(1024 * 1024, any_args).and_call_original
            client = Client.new(stub_responses: true)
            resp = client.upload_part(
              bucket: 'bucket-name',
              key: 'object-key',
              upload_id: 'id',
              part_number: 1,
              body: body # an io-like object
            )
            expect(resp.context.http_request.headers['content-md5']).to eq(
              '+kDD2/74SZx+Rz+/Dw7I1Q=='
            )
          end
        end
      end
    end
  end
end

require_relative '../spec_helper'
require 'stringio'

module Aws
  module S3
    describe Client do
      describe 'MD5 checksums' do
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
            allow(body).to receive(:read)
              .with(1024 * 1024, instance_of(String)).and_call_original
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
              .with(1024 * 1024, instance_of(String)).and_call_original
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

        {
          'delete_objects': { bucket: 'b', delete: { objects: [] } },
          'put_bucket_cors': {
            bucket: 'b', cors_configuration: { cors_rules: [] }
          },
          'put_bucket_lifecycle': {
            bucket: 'b', lifecycle_configuration: { rules: [] }
          },
          'put_bucket_policy': { bucket: 'b', policy: '{foo:"bar"}' },
          'put_bucket_tagging': { bucket: 'b', tagging: { tag_set: [] } }
        }.each_pair do |operation, params|
          it "computes md5 for #{operation} when :compute_checksums is false" do
            client = Client.new(stub_responses: true, compute_checksums: false)
            resp = client.send(operation, params)
            md5 = resp.context.http_request.headers['content-md5']
            expect(md5).to be_kind_of(String)
            expect(md5.size).to eq(24)
          end
        end
      end
    end
  end
end

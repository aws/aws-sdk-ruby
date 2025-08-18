# frozen_string_literal: true

require_relative 'spec_helper'
require 'tempfile'

module Aws
  module S3
    describe TransferManager do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { TransferManager.new(client: client) }
      let(:one_mb_size) { 1024 * 1024 }
      let(:one_mb_content) { '.' * one_mb_size }

      describe '#initialize' do
        it 'constructs a default s3 client when not given' do
          client = double('client')
          expect(S3::Client).to receive(:new).and_return(client)

          tm = TransferManager.new
          expect(tm.client).to be(client)
        end
      end

      describe '#download_file', :jruby_flaky do
        let(:path) { Tempfile.new('destination').path }

        before do
          client.stub_responses(:head_object, content_length: one_mb_size, parts_count: nil)
          client.stub_responses(:get_object, { body: 'hello-world' })
        end

        it 'returns true when download succeeds' do
          expect(subject.download_file(path, bucket: 'bucket', key: 'key')).to be(true)
          expect(File.read(path)).to eq('hello-world')
        end

        it 'raises when download errors' do
          client.stub_responses(:head_object, 'NoSuchKey')
          expect { subject.download_file(path, bucket: 'bucket', key: 'missing-key') }
            .to raise_error(Aws::S3::Errors::NoSuchKey)
        end

        it 'calls progress callback when given' do
          n_calls = 0
          callback = proc { |_b, _p, _t| n_calls += 1 }
          expect(client).to receive(:get_object) { |args| args[:on_chunk_received]&.call('chunk', 1024, 1024) }

          subject.download_file(path, bucket: 'bucket', key: 'key', progress_callback: callback)
          expect(n_calls).to eq(1)
        end
      end

      describe '#upload_file' do
        let(:file) do
          Tempfile.new('ten-meg-file').tap do |f|
            10.times { f.write(one_mb_content) }
            f.rewind
          end
        end

        let(:large_file) do
          Tempfile.new('one-hundred-seventeen-meg-file').tap do |f|
            117.times { f.write(one_mb_content) }
            f.rewind
          end
        end

        it 'returns true when upload succeeds' do
          expect(subject.upload_file(file, bucket: 'bucket', key: 'key')).to be(true)
        end

        it 'raises when upload errors' do
          client.stub_responses(:put_object, 'AccessDenied')
          expect { subject.upload_file(file, bucket: 'forbidden-bucket', key: 'key') }
            .to raise_error(Aws::S3::Errors::AccessDenied)
        end

        it 'yields response when block given' do
          subject.upload_file(file, bucket: 'bucket', key: 'key') do |response|
            expect(response).to be_kind_of(Seahorse::Client::Response)
            expect(response.etag).to eq('ETag')
          end
        end

        it 'calls progress callback when given' do
          n_calls = 0
          callback = proc { |_b, _t| n_calls += 1 }
          expect(client).to receive(:put_object) { |args| args[:on_chunk_sent]&.call('chunk', 1024, 1024) }

          subject.upload_file(file, bucket: 'bucket', key: 'key', progress_callback: callback)
          expect(n_calls).to eq(1)
        end

        it 'accepts an alternative multipart file threshold' do
          expect(client).to receive(:put_object).with({ bucket: 'bucket', key: 'key', body: large_file })
          subject.upload_file(large_file, bucket: 'bucket', key: 'key', multipart_threshold: 200 * one_mb_size)
        end
      end

      describe '#upload_stream', :jruby_flaky do
        let(:seventeen_mb) { one_mb_content * 17 }

        it 'returns true when succeeds' do
          resp = subject.upload_stream(bucket: 'bucket', key: 'key', content_type: 'text/plain') do |write_stream|
            write_stream << seventeen_mb
          end
          expect(resp).to be(true)
        end

        it 'raises when errors' do
          client.stub_responses(:upload_part, RuntimeError.new('part failed'))
          expect do
            subject.upload_stream(bucket: 'bucket', key: 'key') { |write_stream| write_stream << seventeen_mb }
          end.to raise_error(Aws::S3::MultipartUploadError, /part failed/)
        end
      end
    end
  end
end

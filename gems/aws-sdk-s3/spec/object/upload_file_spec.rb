# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { S3::Object.new(bucket_name: 'bucket', key: 'key', client: client) }

      describe '#upload_file' do
        let(:mb_size) { 1024 * 1024 }
        let(:mb_content) { '.' * mb_size }

        let(:file) do
          Tempfile.new('ten-meg-file').tap do |f|
            10.times { f.write(mb_content) }
            f.rewind
          end
        end

        let(:large_file) do
          Tempfile.new('one-hundred-seventeen-meg-file').tap do |f|
            117.times { f.write(mb_content) }
            f.rewind
          end
        end

        it 'returns true when upload succeeds' do
          expect(subject.upload_file(file)).to be(true)
        end

        it 'raises when upload errors' do
          client.stub_responses(:put_object, 'AccessDenied')
          expect { subject.upload_file(file) }.to raise_error(Aws::S3::Errors::AccessDenied)
        end

        it 'yields the response to the given block' do
          subject.upload_file(file) do |response|
            expect(response).to be_kind_of(Seahorse::Client::Response)
            expect(response.etag).to eq('ETag')
          end
        end

        it 'calls progress callback when given' do
          n_calls = 0
          callback = proc { |_b, _t| n_calls += 1 }
          expect(client).to receive(:put_object) { |args| args[:on_chunk_sent]&.call('chunk', 1024, 1024) }

          subject.upload_file(file, progress_callback: callback)
          expect(n_calls).to eq(1)
        end

        it 'accepts an alternative multipart file threshold' do
          expect(client).to receive(:put_object).with({ bucket: 'bucket', key: 'key', body: large_file })
          subject.upload_file(large_file, multipart_threshold: 200 * mb_size)
        end
      end
    end
  end
end

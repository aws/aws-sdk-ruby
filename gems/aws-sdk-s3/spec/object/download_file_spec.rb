# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { S3::Object.new(bucket_name: 'bucket', key: 'key', client: client) }

      describe '#download_file', :jruby_flaky do
        let(:path) { Tempfile.new('destination').path }
        let(:one_mb_size) { 1024 * 1024 }

        before do
          client.stub_responses(:head_object, content_length: one_mb_size, parts_count: nil)
          client.stub_responses(:get_object, { body: 'hello-world' })
        end

        it 'returns true when download succeeds' do
          expect(subject.download_file(path)).to be(true)
          expect(File.read(path)).to eq('hello-world')
        end

        it 'raises when download errors' do
          client.stub_responses(:head_object, 'NoSuchKey')
          expect { subject.download_file(path) }.to raise_error(Aws::S3::Errors::NoSuchKey)
        end

        it 'calls progress callback when given' do
          n_calls = 0
          callback = proc { |_b, _p, _t| n_calls += 1 }
          expect(client).to receive(:get_object) { |args| args[:on_chunk_received]&.call('chunk', 1024, 1024) }

          subject.download_file(path, progress_callback: callback)
          expect(n_calls).to eq(1)
        end
      end
    end
  end
end

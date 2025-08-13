# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:tmpdir) { Dir.tmpdir }

      describe '#download_file', :jruby_flaky do
        let(:path) { Tempfile.new('destination').path }
        let(:one_meg) { 1024 * 1024 }

        before(:each) do
          allow(Dir).to receive(:tmpdir).and_return(tmpdir)
        end

        it 'downloads a single file' do
          client.stub_responses(:head_object, { content_length: one_meg, parts_count: nil })
          expected_params = { bucket: 'bucket', key: 'small', response_target: path }
          expect(client).to receive(:get_object).with(expected_params).exactly(1).times

          object = S3::Object.new(bucket_name: 'bucket', key: 'small', client: client)
          object.download_file(path)
        end

        it 'downloads a large file in parts' do
          parts = 0
          client.stub_responses(:head_object, { content_length: 20 * one_meg, parts_count: 4 })
          client.stub_responses(:get_object, lambda { |_ctx|
            parts += 1
            { body: 'body', content_range: 'bytes 0-3/4' }
          })

          object = S3::Object.new(bucket_name: 'bucket', key: 'large', client: client)
          object.download_file(path)
          expect(parts).to eq(4)
        end

        it 'downloads a large file in ranges' do
          client.stub_responses(:head_object, { content_length: 15 * one_meg, parts_count: nil })
          client.stub_responses(:get_object, lambda { |context|
            responses = {
              'bytes=0-5242879' => { body: 'body', content_range: 'bytes 0-5242879/15728640' },
              'bytes=5242880-10485759' => { body: 'body', content_range: 'bytes 5242880-10485759/15728640' },
              'bytes=10485760-15728639' => { body: 'body', content_range: 'bytes 10485760-15728639/15728640' }
            }
            responses[context.params[:range]]
          })

          object = S3::Object.new(bucket_name: 'bucket', key: 'single', client: client)
          object.download_file(path, chunk_size: 5 * one_meg, mode: 'get_range')
        end
      end
    end
  end
end

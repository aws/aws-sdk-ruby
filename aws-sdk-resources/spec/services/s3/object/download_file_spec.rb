require 'spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do

      let(:client) { S3::Client.new(stub_responses: true) }
      
      describe '#download_file' do

        let(:path) { Tempfile.new('destination').path }

        let(:object) {
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'key',
            client: client
          )
        }

        let(:small_file) { Tempfile.new('small-file') }
        let(:large_file) { Tempfile.new('large-file') }
        let(:one_meg) { 1024 * 1024 }

        before(:each) do
          allow(File).to receive(:size).with(small_file).and_return(one_meg)
          allow(File).to receive(:size).with(large_file).and_return(16 * one_meg)
        end

        it 'downloads small files in Client#get_object' do
          expect(client).to receive(:get_object).with(
            bucket: 'bucket',
            key: 'key',
            response_target: path)

          object.put(small_file)
          object.download_file(path)
        end

        it 'download larger files in multiple parts' do
          expect(client).to receive(:head_object).with(
            bucket: 'bucket',
            key: 'key',
            part_number: 1
          )
          expect(client).to receive(:get_object).exactly(4).times

          object.upload_file(large_file)
          object.download_file(path)
        end

        it 'raises an error if an invaild mode is specified' do
          expect {
            object.download_file(path, mode: "invalid_mode")
          }.to raise_error(
            ArgumentError, "Invalid mode invalid_mode provided, mode should be :single_request, :get_range or :auto")
        end

        it 'raises an error if choose :get_range without :chunk_size' do
          expect {
            object.download_file(path, mode: "get_range")
          }.to raise_error(ArgumentError, "In :get_range mode, :chunk_size must be provided")
        end

        it 'raises an error if :chunk_size is larger than file size' do
          expect {
            object.download_file(path, chunk_size: 20 * one_meg )
          }.to raise_error(ArgumentError, ":chunk_size shouldn't exceed total file size.")
        end
      end
    end
  end
end

# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:tmpdir) { Dir.tmpdir }

      describe '#download_file' do
        let(:path) { Tempfile.new('destination').path }

        let(:small_obj) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'small',
            client: client
          )
        end

        let(:large_obj) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'large',
            client: client
          )
        end

        let(:single_obj) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'single',
            client: client
          )
        end

        let(:boundary_obj) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'boundary',
            client: client
          )
        end

        let(:one_meg) { 1024 * 1024 }
        let(:small_file) { Tempfile.new('small-file') }
        let(:large_file) { Tempfile.new('large-file') }
        let(:single_part_file) { Tempfile.new('single-part-file') }
        let(:boundary_file) { Tempfile.new('range-boundary-file') }
        let(:version_id) { 'a-fake-version-id' }

        before(:each) do
          allow(Dir).to receive(:tmpdir).and_return(tmpdir)

          allow(client).to receive(:head_object).with(
            bucket: 'bucket',
            key: 'small',
            part_number: 1
          ).and_return(
            client.stub_data(
              :head_object,
              content_length: one_meg,
              parts_count: nil
            )
          )

          allow(client).to receive(:head_object).with(
            bucket: 'bucket',
            key: 'small',
            part_number: 1,
            version_id: version_id
          ).and_return(
            client.stub_data(
              :head_object,
              content_length: one_meg,
              parts_count: nil
            )
          )

          allow(client).to receive(:head_object).with(
            bucket: 'bucket',
            key: 'large',
            part_number: 1
          ).and_return(
            client.stub_data(
              :head_object,
              content_length: 5 * one_meg,
              parts_count: 4
            )
          )

          allow(client).to receive(:head_object).with(
            bucket: 'bucket',
            key: 'large'
          ).and_return(
            client.stub_data(
              :head_object,
              content_length: 20 * one_meg
            )
          )

          allow(client).to receive(:head_object).with(
            bucket: 'bucket',
            key: 'single',
            part_number: 1
          ).and_return(
            client.stub_data(
              :head_object,
              content_length: 15 * one_meg,
              parts_count: nil
            )
          )
        end

        it 'downloads single part files in Client#get_object' do
          expect(client).to receive(:get_object).with(
            bucket: 'bucket',
            key: 'small',
            response_target: path
          ).exactly(1).times

          small_obj.download_file(path)
        end

        it 'download larger files in parts' do
          expect(client).to receive(:head_object).with(
            bucket: 'bucket',
            key: 'large',
            part_number: 1
          ).exactly(1).times

          large_obj.download_file(path)
        end

        it 'download larger files in ranges' do
          expect(client).to receive(:head_object).with(
            bucket: 'bucket',
            key: 'single',
            part_number: 1
          ).exactly(1).times

          single_obj.download_file(path)
        end

        it 'supports download object with version_id' do
          expect(client).to receive(:get_object).with(
            bucket: 'bucket',
            key: 'small',
            version_id: version_id,
            response_target: path
          ).exactly(1).times

          small_obj.download_file(path, version_id: version_id)
        end

        it 'raises an error if an invalid mode is specified' do
          expect { large_obj.download_file(path, mode: 'invalid_mode') }
            .to raise_error(
              ArgumentError,
              'Invalid mode invalid_mode provided, mode should '\
              'be :single_request, :get_range or :auto'
            )
        end

        it 'raises an error if choose :get_range without :chunk_size' do
          expect { large_obj.download_file(path, mode: 'get_range') }
            .to raise_error(
              ArgumentError,
              'In :get_range mode, :chunk_size must be provided'
            )
        end

        it 'raises an error if :chunk_size is larger than file size' do
          expect { large_obj.download_file(path, chunk_size: 50 * one_meg) }
            .to raise_error(
              ArgumentError,
              ":chunk_size shouldn't exceed total file size."
            )
        end

        context 'file size is chunk size boundary' do
          let(:file_size) { 5 * one_meg + 1 }
          let(:chunk_size) { 5 * one_meg }

          before :each do
            allow(client).to receive(:head_object).with(
              bucket: 'bucket',
              key: 'boundary',
              part_number: 1
            ).and_return(
              client.stub_data(
                :head_object,
                content_length: file_size
              )
            )

            client.stub_responses(:get_object, ->(context) {
              # S3 does not allow 1 byte ranges. This shouldn't be raised.
              if context.params[:range] == "bytes=#{file_size}-#{file_size}"
                'InvalidRange'
              else
                { content_range: "bytes 0-#{chunk_size - 1}/#{file_size}" }
              end
            })
          end

          it 'downloads the file with default chunk size' do
            expect(client).to receive(:head_object).with(
              bucket: 'bucket',
              key: 'boundary',
              part_number: 1
            ).exactly(1).times

            boundary_obj.download_file(path)
          end

          it 'downloads the file with provided chunk size' do
            expect(client).to receive(:head_object).with(
              bucket: 'bucket',
              key: 'boundary',
              part_number: 1
            ).exactly(1).times

            boundary_obj.download_file(path, chunk_size: chunk_size)
          end
        end
      end
    end
  end
end

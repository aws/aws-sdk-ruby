# frozen_string_literal: true

require_relative 'spec_helper'
require 'tempfile'

module Aws
  module S3
    describe FileUploader do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { FileUploader.new(client: client) }
      let(:params) { { bucket: 'bucket', key: 'key' } }
      let(:one_meg) { 1024 * 1024 }
      let(:one_mb) { '.' * one_meg }

      describe '#initialize' do
        it 'constructs a default s3 client when not given' do
          client = double('client')
          expect(S3::Client).to receive(:new).and_return(client)

          uploader = MultipartFileUploader.new
          expect(uploader.client).to be(client)
        end

        it 'sets a default multipart threshold when not given' do
          expect(subject.multipart_threshold).to be(FileUploader::DEFAULT_MULTIPART_THRESHOLD)
        end

        it 'sets a custom multipart threshold' do
          five_mb = 5 * one_meg
          uploader = FileUploader.new(client: client, multipart_threshold: five_mb)
          expect(uploader.multipart_threshold).to be(five_mb)
        end
      end

      describe '#upload' do
        let(:ten_meg_file) do
          Tempfile.new('ten-meg-file').tap do |f|
            10.times { f.write(one_mb) }
            f.rewind
          end
        end

        it 'uploads a small file using Client#put_object' do
          file = Tempfile.new('one-meg-file').tap do |f|
            f.write(one_mb)
            f.rewind
          end

          expect(client).to receive(:put_object).with({ bucket: 'bucket', key: 'key', body: file })
          subject.upload(file, params)
        end

        it 'delegates the large file to use multipart upload' do
          large_file = Tempfile.new('one-hundred-seventeen-meg-file').tap do |f|
            117.times { f.write(one_mb) }
            f.rewind
          end

          expect_any_instance_of(MultipartFileUploader).to receive(:upload).with(large_file, params)
          subject.upload(large_file, params)
        end

        it 'reports progress for a small file' do
          expect(client).to receive(:put_object).with(
            params.merge(body: ten_meg_file, on_chunk_sent: instance_of(Proc))
          ) do |args|
            args[:on_chunk_sent].call(ten_meg_file, ten_meg_file.size, ten_meg_file.size)
          end
          callback = proc do |bytes, totals|
            expect(bytes).to eq([ten_meg_file.size])
            expect(totals).to eq([ten_meg_file.size])
          end

          subject.upload(ten_meg_file, params.merge(progress_callback: callback))
        end

        it 'accepts paths to files to upload' do
          file = double('file')
          expect(File).to receive(:open).with(ten_meg_file.path, 'rb').and_yield(file)
          expect(client).to receive(:put_object).with(params.merge(body: file))

          subject.upload(ten_meg_file.path, params)
        end
      end
    end
  end
end

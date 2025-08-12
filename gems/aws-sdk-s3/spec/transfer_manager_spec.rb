# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe TransferManager do
      describe '#initialize' do
        it 'constructs a default s3 client when one is not given' do
        end
      end

      describe '#download_file' do
        it 'downloads single file' do
          # TODO
        end

        it 'downloads larger files in parts' do
          # TODO
        end

        it 'downloads larger files in ranges' do
          # TODO
        end
      end

      describe '#upload_file' do
        # TODO
      end

      describe '#upload_stream' do
        # TODO
      end
    end
  end
end


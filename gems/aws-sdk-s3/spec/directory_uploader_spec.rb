# frozen_string_literal: true

require_relative 'spec_helper'
require 'tempfile'

module Aws
  module S3
    describe DirectoryUploader do
      describe '#upload' do
        it 'raises when directory does not exist' do
        end

        it 'handles empty directory' do
        end

        context 'recursive' do
          it 'uploads recursively when true' do
          end

          it 'uploads only direct files when false' do
          end
        end

        context 's3 prefix' do
          it 'applies prefixes to all keys when set' do
          end
        end

        context 'follow_symlinks option' do
          it 'ignores symlinks by default' do
          end

          it 'follows symlinks when true' do
          end
        end

        context 'ignore_failure option' do
          it 'continues uploading after failure when true' do
          end

          it 'stops uploading after failure when false' do

          end
        end

        context 'filter callbacks' do
          it 'excludes files' do

          end
        end

        context 'request callbacks' do
          it 'modifies upload parameters' do
          end
        end

        context 'progress callbacks' do
          it 'reports progress' do
          end
        end
      end
    end
  end
end

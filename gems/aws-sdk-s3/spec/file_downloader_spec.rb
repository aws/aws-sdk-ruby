# frozen_string_literal: true

require_relative 'spec_helper'
require 'tempfile'

module Aws
  module S3
    describe FileDownloader do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { FileDownloader.new(client: client, executor: DefaultExecutor.new) }
      let(:tmpdir) { Dir.tmpdir }

      describe '#initialize' do
        it 'constructs a default s3 client when not given' do
          client = double('client')
          expect(S3::Client).to receive(:new).and_return(client)

          downloader = FileDownloader.new
          expect(downloader.client).to be(client)
        end
      end

      describe '#download', :jruby_flaky do
        let(:path) { Tempfile.new('destination').path }
        let(:one_meg) { 1024 * 1024 }
        let(:single_params) { { bucket: 'bucket', key: 'single' } }
        let(:parts_params) { { bucket: 'bucket', key: 'parts' } }
        let(:range_params) { { bucket: 'bucket', key: 'range' } }

        before(:each) do
          allow(Dir).to receive(:tmpdir).and_return(tmpdir)
          client.stub_responses(:head_object, lambda { |context|
            case context.params[:key]
            when 'single'
              { content_length: one_meg, parts_count: nil }
            when 'parts'
              resp = { content_length: 20 * one_meg, parts_count: nil }
              resp[:parts_count] = 4 if context.params[:part_number]
              resp
            when 'range'
              { content_length: 15 * one_meg, parts_count: nil }
            end
          })
        end

        it 'downloads a single object using Client#get_object' do
          expect(client).to receive(:get_object).with(single_params.merge(response_target: path)).exactly(1).times
          subject.download(path, single_params)
        end

        it 'downloads a large object in parts' do
          parts = 0
          client.stub_responses(:get_object, lambda do |_ctx|
            parts += 1
            { body: 'body', content_range: 'bytes 0-3/4' }
          end)
          subject.download(path, parts_params)
          expect(parts).to eq(4)
        end

        it 'downloads a large object in ranges' do
          client.stub_responses(:get_object, lambda { |context|
            responses = {
              'bytes=0-5242879' => { body: 'body', content_range: 'bytes 0-5242879/15728640' },
              'bytes=5242880-10485759' => { body: 'body', content_range: 'bytes 5242880-10485759/15728640' },
              'bytes=10485760-15728639' => { body: 'body', content_range: 'bytes 10485760-15728639/15728640' }
            }
            responses[context.params[:range]]
          })
          subject.download(path, range_params.merge(chunk_size: 5 * one_meg, mode: 'get_range'))
        end

        it 'supports download object with version_id' do
          params = single_params.merge(version_id: 'foo')
          expect(client).to receive(:get_object).with(params.merge(response_target: path)).exactly(1).times

          subject.download(path, params)
        end

        it 'supports File object as destination' do
          client.stub_responses(:get_object, { body: 'foo', content_range: 'bytes 0-3/4' })

          Tempfile.open('test') do |f|
            subject.download(f, parts_params)
            f.rewind
            expect(f.read).to eq('foo')
          end
        end

        it 'supports Pathname as destination' do
          client.stub_responses(:get_object, { body: 'bar', content_range: 'bytes 0-3/4' })

          pathname = Pathname.new(path)
          subject.download(pathname, parts_params)
          expect(pathname.read).to eq('bar')
        end

        it 'calls on_checksum_validated on single object' do
          client.stub_responses(:get_object, { body: 'body', checksum_sha1: 'Agg/RXngimEkJcDBoX7ket14O5Q=' })
          callback_data = { called: 0 }
          mutex = Mutex.new
          callback = proc do |_alg, _resp|
            mutex.synchronize { callback_data[:called] += 1 }
          end

          subject.download(path, single_params.merge(on_checksum_validated: callback))
          expect(callback_data[:called]).to eq(1)
        end

        it 'calls on_checksum_validated on multipart object' do
          callback_data = { called: 0 }
          client.stub_responses(
            :get_object, { body: 'body', content_range: 'bytes 0-3/4', checksum_sha1: 'Agg/RXngimEkJcDBoX7ket14O5Q=' }
          )
          mutex = Mutex.new
          callback = proc do |_alg, _resp|
            mutex.synchronize { callback_data[:called] += 1 }
          end

          subject.download(path, parts_params.merge(on_checksum_validated: callback))
          expect(callback_data[:called]).to eq(4)
        end

        it 'warns when :checksum_mode is set to DISABLED' do
          expect(subject).to receive(:warn).with(/checksum_mode option is deprecated/)
          subject.download(path, single_params.merge(checksum_mode: 'DISABLED'))
        end

        it 'downloads the file in range chunks' do
          client.stub_responses(:get_object, lambda { |context|
            ranges = context.params[:range].match(/bytes=(?<start>\d+)-(?<end>\d+)/)
            expect(ranges[:end].to_i - ranges[:start].to_i + 1).to eq(one_meg)
            { content_range: "bytes #{ranges[:start]}-#{ranges[:end]}/#{20 * one_meg}" }
          })

          subject.download(path, range_params.merge(chunk_size: one_meg))
        end

        context 'multipart progress' do
          it 'reports progress for single object' do
            small_file_size = 1024
            expect(client)
              .to receive(:get_object)
              .with(single_params.merge(response_target: path, on_chunk_received: instance_of(Proc))) do |args|
              args[:on_chunk_received].call(Tempfile.new('small-file'), small_file_size, small_file_size)
            end

            n_calls = 0
            callback = proc do |bytes, part_sizes, total|
              expect(bytes).to eq([small_file_size])
              expect(part_sizes).to eq([small_file_size])
              expect(total).to eq(small_file_size)
              n_calls += 1
            end

            subject.download(path, single_params.merge(progress_callback: callback))
            expect(n_calls).to eq(1)
          end

          it 'reports progress for downloading a large object in parts' do
            expect(client).to receive(:get_object).exactly(4).times do |args|
              args[:on_chunk_received].call(Tempfile.new('large-file'), 4, 4)
              client.stub_data(:get_object, body: StringIO.new('chunk'), content_range: 'bytes 0-3/4')
            end

            n_calls = 0
            mutex = Mutex.new
            callback = proc do |bytes, part_sizes, total|
              mutex.synchronize do
                expect(bytes.size).to eq(4)
                expect(part_sizes.size).to eq(4)
                expect(total).to eq(20 * one_meg)
                n_calls += 1
              end
            end
            subject.download(path, parts_params.merge(progress_callback: callback))
            expect(n_calls).to eq(4)
          end
        end

        context 'error handling' do
          it 'raises when given an invalid destination' do
            expect { subject.download(nil, single_params) }.to raise_error(ArgumentError, /Invalid destination/)
          end

          it 'raises when checksum validation fails on single object' do
            client.stub_responses(:get_object, { body: 'body', checksum_sha1: 'invalid' })
            expect { subject.download(path, single_params) }.to raise_error(Aws::Errors::ChecksumError)
          end

          it 'raises when checksum validation fails on multipart object' do
            client.stub_responses(:get_object, { body: 'body', checksum_sha1: 'invalid' })
            expect { subject.download(path, parts_params) }.to raise_error(Aws::Errors::ChecksumError)
          end

          it 'raises when ETAG does not match during multipart get by ranges' do
            client.stub_responses(:head_object, content_length: 15 * one_meg, parts_count: nil, etag: 'test-etag')
            client.stub_responses(:get_object, lambda { |ctx|
              expect(ctx.params[:if_match]).to eq('test-etag')
              'PreconditionFailed'
            })
            expect { subject.download(path, range_params.merge(chunk_size: one_meg, mode: 'get_range')) }
              .to raise_error(Aws::S3::Errors::PreconditionFailed)
          end

          it 'raises when ETAG does not match during multipart get by parts' do
            client.stub_responses(:head_object, { content_length: 20 * one_meg, etag: 'test-etag', parts_count: 4 })
            client.stub_responses(:get_object, lambda { |ctx|
              expect(ctx.params[:if_match]).to eq('test-etag')
              'PreconditionFailed'
            })
            expect { subject.download(path, parts_params) }.to raise_error(Aws::S3::Errors::PreconditionFailed)
          end

          it 'raises when given an invalid mode' do
            expect { subject.download(path, parts_params.merge(mode: 'invalid_mode')) }
              .to raise_error(ArgumentError, /Invalid mode invalid_mode provided/)
          end

          it 'raises when given an "get_range" mode without :chunk_size' do
            expect { subject.download(path, range_params.merge(mode: 'get_range')) }
              .to raise_error(ArgumentError, /In get_range mode, :chunk_size must be provided/)
          end

          it 'raises when given :chunk_size is larger than file size' do
            expect { subject.download(path, range_params.merge(chunk_size: 50 * one_meg)) }
              .to raise_error(ArgumentError, /:chunk_size shouldn't exceed total file size/)
          end

          it 'raises when :on_checksum_validated is not callable' do
            expect { subject.download(path, parts_params.merge(on_checksum_validated: 'string')) }
              .to raise_error(ArgumentError, /:on_checksum_validated must be callable/)
          end

          it 'raises when range validation fails' do
            client.stub_responses(:get_object, { body: 'body', content_range: 'bytes 0-3/4' })
            expect { subject.download(path, range_params.merge(mode: 'get_range', chunk_size: one_meg)) }
              .to raise_error(Aws::S3::MultipartDownloadError)
          end

          it 'does not overwrite existing file when download fails' do
            File.write(path, 'existing content')

            client.stub_responses(:get_object, lambda { |context|
              responses = {
                'bytes=0-5242879' => { body: 'body', content_range: 'bytes 0-5242879/15728640' },
                'bytes=5242880-10485759' => { body: 'body', content_range: 'bytes 5242880-10485759/15728640' },
                'bytes=10485760-15728639' => { body: 'fake-range', content_range: 'bytes 10485800-15728639/15728640' }
              }
              responses[context.params[:range]]
            })

            expect { subject.download(path, range_params.merge(chunk_size: 5 * one_meg, mode: 'get_range')) }
              .to raise_error(Aws::S3::MultipartDownloadError)
            expect(File.exist?(path)).to be(true)
            expect(File.read(path)).to eq('existing content')
          end
        end
      end
    end
  end
end

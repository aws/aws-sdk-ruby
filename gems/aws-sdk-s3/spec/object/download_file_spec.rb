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
        let(:small_obj) { S3::Object.new(bucket_name: 'bucket', key: 'small', client: client) }
        let(:large_obj) { S3::Object.new(bucket_name: 'bucket', key: 'large', client: client) }
        let(:single_obj) { S3::Object.new(bucket_name: 'bucket', key: 'single', client: client) }
        let(:small_obj_params) { { bucket: 'bucket', key: 'small', response_target: path } }
        let(:one_meg) { 1024 * 1024 }

        before(:each) do
          allow(Dir).to receive(:tmpdir).and_return(tmpdir)
          client.stub_responses(:head_object, lambda { |context|
            case context.params[:key]
            when 'small'
              { content_length: one_meg, parts_count: nil }
            when 'large'
              resp = { content_length: 20 * one_meg, parts_count: nil }
              resp[:parts_count] = 4 if context.params[:part_number]
              resp
            when 'single'
              { content_length: 15 * one_meg, parts_count: nil }
            end
          })
        end

        it 'downloads single part files in Client#get_object' do
          expect(client).to receive(:get_object).with(small_obj_params).exactly(1).times
          small_obj.download_file(path)
        end

        it 'download larger files in parts' do
          parts = 0
          client.stub_responses(:get_object, lambda { |_ctx|
            parts += 1
            { body: 'body', content_range: 'bytes 0-3/4' }
          })
          large_obj.download_file(path)
          expect(parts).to eq(4)
        end

        it 'download larger files in ranges' do
          client.stub_responses(:get_object, lambda { |context|
            responses = {
              'bytes=0-5242879' => { body: 'body', content_range: 'bytes 0-5242879/15728640' },
              'bytes=5242880-10485759' => { body: 'body', content_range: 'bytes 5242880-10485759/15728640' },
              'bytes=10485760-15728639' => { body: 'body', content_range: 'bytes 10485760-15728639/15728640' }
            }
            responses[context.params[:range]]
          })
          single_obj.download_file(path, chunk_size: 5 * one_meg, mode: 'get_range')
        end

        it 'supports download object with version_id' do
          expect(client).to receive(:get_object).with(small_obj_params.merge(version_id: 'foo')).exactly(1).times
          small_obj.download_file(path, version_id: 'foo')
        end

        it 'calls on_checksum_validated on single part' do
          client.stub_responses(:get_object, { body: 'body', checksum_sha1: 'Agg/RXngimEkJcDBoX7ket14O5Q=' })
          callback_data = { called: 0 }
          mutex = Mutex.new
          callback = proc do |_alg, _resp|
            mutex.synchronize { callback_data[:called] += 1 }
          end

          small_obj.download_file(path, on_checksum_validated: callback)
          expect(callback_data[:called]).to eq(1)
        end

        it 'calls on_checksum_validated on multipart' do
          callback_data = { called: 0 }
          client.stub_responses(
            :get_object, { body: 'body', content_range: 'bytes 0-3/4', checksum_sha1: 'Agg/RXngimEkJcDBoX7ket14O5Q=' }
          )
          mutex = Mutex.new
          callback = proc do |_alg, _resp|
            mutex.synchronize { callback_data[:called] += 1 }
          end

          large_obj.download_file(path, on_checksum_validated: callback)
          expect(callback_data[:called]).to eq(4)
        end

        it 'supports disabling checksum_mode' do
          client.stub_responses(:head_object, lambda { |context|
            expect(context.params[:checksum_mode]).to eq('DISABLED')
            { content_length: one_meg, parts_count: nil }
          })
          client.stub_responses(:get_object, lambda { |context|
            expect(context.params[:checksum_mode]).to eq('DISABLED')
            { body: 'body' }
          })

          small_obj.download_file(path, checksum_mode: 'DISABLED')
        end

        it 'downloads the file in range chunks' do
          client.stub_responses(:get_object, lambda { |context|
            ranges = context.params[:range].match(/bytes=(?<start>\d+)-(?<end>\d+)/)
            expect(ranges[:end].to_i - ranges[:start].to_i + 1).to eq(one_meg)
            { content_range: "bytes #{ranges[:start]}-#{ranges[:end]}/#{20 * one_meg}" }
          })

          large_obj.download_file(path, chunk_size: one_meg)
        end

        context 'multipart progress' do
          it 'reports progress for single part objects' do
            small_file_size = 1024
            expect(client)
              .to receive(:get_object)
              .with(small_obj_params.merge(on_chunk_received: instance_of(Proc))) do |args|
              args[:on_chunk_received].call(Tempfile.new('small-file'), small_file_size, small_file_size)
            end

            n_calls = 0
            callback = proc do |bytes, part_sizes, total|
              expect(bytes).to eq([small_file_size])
              expect(part_sizes).to eq([small_file_size])
              expect(total).to eq(small_file_size)
              n_calls += 1
            end

            small_obj.download_file(path, progress_callback: callback)
            expect(n_calls).to eq(1)
          end

          it 'reports progress for files downloaded in parts' do
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
            large_obj.download_file(path, progress_callback: callback)
            expect(n_calls).to eq(4)
          end
        end

        context 'error handling' do
          it 'raises an error when checksum validation fails on single part' do
            client.stub_responses(:get_object, { body: 'body', checksum_sha1: 'invalid' })

            expect { small_obj.download_file(path) }.to raise_error(Aws::Errors::ChecksumError)
          end

          it 'raises an error when checksum validation fails on multipart' do
            client.stub_responses(:get_object, { body: 'body', checksum_sha1: 'invalid' })
            thread = double(value: nil)

            expect(Thread).to receive(:new).and_yield.and_return(thread)
            expect { large_obj.download_file(path) }.to raise_error(Aws::Errors::ChecksumError)
          end

          it 'does not download object when ETAG does not match during multipart get by ranges' do
            client.stub_responses(:head_object, content_length: 15 * one_meg, parts_count: nil, etag: 'test-etag')
            client.stub_responses(:get_object, lambda { |ctx|
              expect(ctx.params[:if_match]).to eq('test-etag')
              'PreconditionFailed'
            })
            thread = double(value: nil)
            expect(Thread).to receive(:new).and_yield.and_return(thread)
            expect { single_obj.download_file(path) }.to raise_error(Aws::S3::Errors::PreconditionFailed)
          end

          it 'does not download object when ETAG does not match during multipart get by parts' do
            client.stub_responses(:head_object, { content_length: 20 * one_meg, etag: 'test-etag', parts_count: 4 })
            client.stub_responses(:get_object, lambda { |ctx|
              expect(ctx.params[:if_match]).to eq('test-etag')
              'PreconditionFailed'
            })

            thread = double(value: nil)
            expect(Thread).to receive(:new).and_yield.and_return(thread)
            expect { large_obj.download_file(path) }.to raise_error(Aws::S3::Errors::PreconditionFailed)
          end

          it 'raises an error if an invalid mode is specified' do
            expect { large_obj.download_file(path, mode: 'invalid_mode') }
              .to raise_error(ArgumentError, /Invalid mode invalid_mode provided/)
          end

          it 'raises an error if choose :get_range without :chunk_size' do
            expect { large_obj.download_file(path, mode: 'get_range') }
              .to raise_error(ArgumentError, 'In get_range mode, :chunk_size must be provided')
          end

          it 'raises an error if :chunk_size is larger than file size' do
            expect { large_obj.download_file(path, chunk_size: 50 * one_meg) }
              .to raise_error(ArgumentError, ":chunk_size shouldn't exceed total file size.")
          end

          it 'raises an error if :on_checksum_validated is not callable' do
            expect { large_obj.download_file(path, on_checksum_validated: 'string') }
              .to raise_error(ArgumentError, ':on_checksum_validated must be callable')
          end

          it 'raises error when range validation fails' do
            client.stub_responses(:get_object, { body: 'body', content_range: 'bytes 0-3/4' })
            expect { large_obj.download_file(path, mode: 'get_range', chunk_size: one_meg) }
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

            expect { single_obj.download_file(path, chunk_size: 5 * one_meg, mode: 'get_range') }
              .to raise_error(Aws::S3::MultipartDownloadError)
            expect(File.exist?(path)).to be(true)
            expect(File.read(path)).to eq('existing content')
          end
        end
      end
    end
  end
end

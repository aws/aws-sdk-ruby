# frozen_string_literal: true

require_relative 'spec_helper'
require 'socket'
require 'tempfile'

module Aws
  module S3
    describe TransferManager do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:subject) { TransferManager.new(client: client) }
      let(:one_mb_size) { 1024 * 1024 }
      let(:one_mb_content) { '.' * one_mb_size }

      describe '#initialize' do
        it 'constructs a default s3 client when not given' do
          client = double('client')
          expect(S3::Client).to receive(:new).and_return(client)

          tm = TransferManager.new
          expect(tm.client).to be(client)
        end
      end

      describe '#download_file', :jruby_flaky do
        let(:path) { Tempfile.new('destination').path }

        before do
          client.stub_responses(:head_object, content_length: one_mb_size, parts_count: nil)
          client.stub_responses(:get_object, { body: 'hello-world' })
        end

        it 'returns true when download succeeds' do
          expect(subject.download_file(path, bucket: 'bucket', key: 'key')).to be(true)
          expect(File.read(path)).to eq('hello-world')
        end

        it 'raises when download errors' do
          client.stub_responses(:head_object, 'NoSuchKey')
          expect { subject.download_file(path, bucket: 'bucket', key: 'missing-key') }
            .to raise_error(Aws::S3::Errors::NoSuchKey)
        end

        it 'calls progress callback when given' do
          n_calls = 0
          callback = proc { |_b, _p, _t| n_calls += 1 }
          expect(client).to receive(:get_object) { |args| args[:on_chunk_received]&.call('chunk', 1024, 1024) }

          subject.download_file(path, bucket: 'bucket', key: 'key', progress_callback: callback)
          expect(n_calls).to eq(1)
        end
      end

      describe '#upload_file' do
        let(:file) do
          Tempfile.new('ten-meg-file').tap do |f|
            10.times { f.write(one_mb_content) }
            f.rewind
          end
        end

        let(:large_file) do
          Tempfile.new('one-hundred-seventeen-meg-file').tap do |f|
            117.times { f.write(one_mb_content) }
            f.rewind
          end
        end

        it 'returns true when upload succeeds' do
          expect(subject.upload_file(file, bucket: 'bucket', key: 'key')).to be(true)
        end

        it 'raises when upload errors' do
          client.stub_responses(:put_object, 'AccessDenied')
          expect { subject.upload_file(file, bucket: 'forbidden-bucket', key: 'key') }
            .to raise_error(Aws::S3::Errors::AccessDenied)
        end

        it 'yields response when block given' do
          subject.upload_file(file, bucket: 'bucket', key: 'key') do |response|
            expect(response).to be_kind_of(Seahorse::Client::Response)
            expect(response.etag).to eq('ETag')
          end
        end

        it 'calls progress callback when given' do
          n_calls = 0
          callback = proc { |_b, _t| n_calls += 1 }
          expect(client).to receive(:put_object) { |args| args[:on_chunk_sent]&.call('chunk', 1024, 1024) }

          subject.upload_file(file, bucket: 'bucket', key: 'key', progress_callback: callback)
          expect(n_calls).to eq(1)
        end

        it 'accepts an alternative multipart file threshold' do
          expect(client).to receive(:put_object).with({ bucket: 'bucket', key: 'key', body: large_file })
          subject.upload_file(large_file, bucket: 'bucket', key: 'key', multipart_threshold: 200 * one_mb_size)
        end

        context ':http_check_size', skip: defined?(JRUBY_VERSION) do
          let(:test_file) do
            Tempfile.new('test_upload_file').tap do |f|
              f.write('x' * 65_536)
              f.rewind
            end
          end

          def start_mirror_server(chunk_size)
            server = TCPServer.new('localhost', 0)
            port = server.addr[1]
            chunks = []

            server_thread = Thread.new do
              Timeout.timeout(10) do
                client = server.accept
                headers = ''
                while (line = client.gets)
                  headers += line
                  break if line.strip.empty?
                end

                if headers.include?('Expect: 100-continue')
                  client.write("HTTP/1.1 100 Continue\r\n\r\n")

                  loop do
                    sleep(0.01) # needs wait between reads
                    data = client.read_nonblock(chunk_size, exception: false)
                    break if data == :wait_readable || data.nil?

                    chunks << data.size
                  end
                end
                client.write("HTTP/1.1 200 OK\r\nContent-Length: 0\r\n\r\n")
              ensure
                client.close
              end
            end
            [server, server_thread, port]
          end

          it 'uses the given chunk size when uploading' do
            WebMock.disable!
            chunk_size = 32_768
            server, server_thread, port = start_mirror_server(chunk_size)
            client = Aws::S3::Client.new(
              endpoint: "http://localhost:#{port}",
              region: 'us-east-1',
              access_key_id: 't',
              secret_access_key: 't'
            )
            tm = Aws::S3::TransferManager.new(client: client)
            read_sizes = []

            expect(Seahorse::Client::NetHttp::Patches::RequestPatches::RequestIO)
              .to receive(:custom_stream).and_call_original
            allow_any_instance_of(Aws::Plugins::ChecksumAlgorithm::AwsChunkedTrailerDigestIO)
              .to receive(:read).and_wrap_original do |method, size|
              read_sizes << size
              method.call(size)
            end

            tm.upload_file(test_file, bucket: 'test-bucket', key: 'test-key', http_chunk_size: chunk_size)
            server_thread.join
            expect(read_sizes).to all(eq(chunk_size))
          ensure
            server&.close
            WebMock.enable!
          end

          it 'uses default chunk size' do
            WebMock.disable!
            chunk_size = 16_384
            server, server_thread, port = start_mirror_server(chunk_size)
            client = Aws::S3::Client.new(
              endpoint: "http://localhost:#{port}",
              region: 'us-east-1',
              access_key_id: 't',
              secret_access_key: 't'
            )
            tm = Aws::S3::TransferManager.new(client: client)
            read_sizes = []

            allow_any_instance_of(Aws::Plugins::ChecksumAlgorithm::AwsChunkedTrailerDigestIO)
              .to receive(:read).and_wrap_original do |method, size|
              read_sizes << size
              method.call(size)
            end
            tm.upload_file(test_file, bucket: 'test-bucket', key: 'test-key')
            server_thread.join
            expect(read_sizes).to all(eq(chunk_size))
          ensure
            server.close
            WebMock.enable!
          end

          it 'raises error when less than 16KB' do
            expect do
              subject.upload_file(large_file, bucket: 'bucket', key: 'key', http_chunk_size: 100)
            end.to raise_error(ArgumentError, /:http_chunk_size must be at least 16384 bytes/)
          end
        end
      end

      describe '#upload_stream', :jruby_flaky do
        let(:seventeen_mb) { one_mb_content * 17 }

        it 'returns true when succeeds' do
          resp = subject.upload_stream(bucket: 'bucket', key: 'key', content_type: 'text/plain') do |write_stream|
            write_stream << seventeen_mb
          end
          expect(resp).to be(true)
        end

        it 'raises when errors' do
          client.stub_responses(:upload_part, RuntimeError.new('part failed'))
          expect do
            subject.upload_stream(bucket: 'bucket', key: 'key') { |write_stream| write_stream << seventeen_mb }
          end.to raise_error(Aws::S3::MultipartUploadError, /part failed/)
        end
      end
    end
  end
end

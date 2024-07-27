# frozen_string_literal: true

module Benchmark
  module Gems
    class S3 < Benchmark::Gem
      def gem_name
        'aws-sdk-s3'
      end

      def client_module_name
        'Aws::S3'
      end

      def operation_benchmarks
        {
          get_object_small: {
            setup: proc do |client|
              client.stub_responses(:get_object, [{ body: '.' * 128 }])
              { bucket: 'bucket', key: 'key' }
            end,
            test: proc do |client, req|
              client.get_object(req)
            end
          },
          get_object_large: {
            n: 150,
            setup: proc do |client|
              client.stub_responses(:get_object, [{ body: '.' * 1024 * 1024 * 10 }]) # 10 MB
              { bucket: 'bucket', key: 'key' }
            end,
            test: proc do |client, req|
              client.get_object(req)
            end
          },
          put_object_small: {
            setup: proc do |_client|
              { bucket: 'bucket', key: 'key', body: '.' * 128 }
            end,
            test: proc do |client, req|
              client.put_object(req)
            end
          },
          put_object_large: {
            n: 150,
            setup: proc do |_client|
              { bucket: 'bucket', key: 'key', body: '.' * 1024 * 1024 * 10 }
            end,
            test: proc do |client, req|
              client.put_object(req)
            end
          },
          put_object_multipart_large: {
            n: 150,
            setup: proc do |_client|
              { multipart_threshold: 5 * 1024 * 1024 }
            end,
            test: proc do |client, req|
              resource = Aws::S3::Resource.new(client: client)
              object = resource.bucket('bucket').object('key')
              tempfile = Tempfile.new('put_object_multipart_large')
              tempfile << '.' * 1024 * 1024 * 10
              object.upload_file(tempfile, **req)
            end
          },
          head_object: {
            setup: proc do |_client|
              { bucket: 'bucket', key: 'key' }
            end,
            test: proc do |client, req|
              client.head_object(req)
            end
          },
          s3_express_get_object_small: {
            setup: proc do |client|
              client.stub_responses(:get_object, [{ body: '.' * 128 }])
              { bucket: 'bucket--usw2-az2-d-s3', key: 'key' }
            end,
            test: proc do |client, req|
              client.get_object(req)
            end
          },
          s3_express_get_object_large: {
            n: 150,
            setup: proc do |client|
              client.stub_responses(:get_object, [{ body: '.' * 1024 * 1024 * 10 }]) # 10 MB
              { bucket: 'bucket--usw2-az2-d-s3', key: 'key' }
            end,
            test: proc do |client, req|
              client.get_object(req)
            end
          },
          s3_express_put_object_small: {
            setup: proc do |_client|
              { bucket: 'bucket--usw2-az2-d-s3', key: 'key', body: '.' * 128 }
            end,
            test: proc do |client, req|
              client.put_object(req)
            end
          },
          s3_express_put_object_large: {
            n: 150,
            setup: proc do |_client|
              { bucket: 'bucket--usw2-az2-d-s3', key: 'key', body: '.' * 1024 * 1024 * 10 }
            end,
            test: proc do |client, req|
              client.put_object(req)
            end
          },
          s3_express_put_object_multipart_large: {
            n: 150,
            setup: proc do |_client|
              { multipart_threshold: 5 * 1024 * 1024 }
            end,
            test: proc do |client, req|
              resource = Aws::S3::Resource.new(client: client)
              object = resource.bucket('bucket--usw2-az2-d-s3').object('key')
              tempfile = Tempfile.new('s3_express_put_object_multipart_large')
              tempfile << '.' * 1024 * 1024 * 10
              object.upload_file(tempfile, **req)
            end
          }
        }
      end
    end
  end
end

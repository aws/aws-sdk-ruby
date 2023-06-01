# frozen_string_literal: true

module Benchmark
  module Gems
    class S3 < Benchmark::Gem

      def gem_name
        'aws-sdk-s3'
      end

      def client_module_name
        :S3
      end

      def operation_benchmarks
        {
          get_object_small: {
            setup: proc do |client|
              client.stub_responses(:get_object, [{body: "." * 128}])
              {bucket: 'bucket', key: 'key'}
            end,
            test: proc do |client, req|
              client.get_object(req)
            end
          },
          get_object_large: {
            n: 150,
            setup: proc do |client|
              client.stub_responses(:get_object, [{body: "." * 1024*1024*10}]) # 10 MB
              {bucket: 'bucket', key: 'key'}
            end,
            test: proc do |client, req|
              client.get_object(req)
            end
          },
          put_object_small: {
            setup: proc do |client|
              {bucket: 'bucket', key: 'key', body: '.' * 128}
            end,
            test: proc do |client, req|
              client.put_object(req)
            end
          },
          put_object_large: {
            n: 150,
            setup: proc do |client|
              {bucket: 'bucket', key: 'key', body: "." * 1024*1024*10}
            end,
            test: proc do |client, req|
              client.put_object(req)
            end
          },
          head_object: {
            setup: proc do |client|
              {bucket: 'bucket', key: 'key'}
            end,
            test: proc do |client, req|
              client.head_object(req)
            end
          },
        }
      end

    end
  end
end
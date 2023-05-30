# frozen_string_literal: true

module Benchmark
  module Service
    module S3
    GEM_NAME = 'aws-sdk-s3'.freeze

    BENCHMARKS = {
      module: :S3,
      benchmarks: {
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
    }
    end
  end
end
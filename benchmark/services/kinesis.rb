# frozen_string_literal: true

module Benchmark
  module Service
    module Kinesis
      GEM_NAME = 'aws-sdk-kinesis'.freeze

      BENCHMARKS = {
        module: :Kinesis,
        benchmarks: {
          put_record_small: {
            setup: proc do |client|
              {stream_name: 'stream', partition_key: "pk", data: 'data'}
            end,
            test: proc do |client, req|
              client.put_record(req)
            end
          },
          put_record_large: {
            setup: proc do |client|
              {stream_name: 'stream', partition_key: "pk", data: 'data'*10000}
            end,
            test: proc do |client, req|
              client.put_record(req)
            end
          },
        }
      }
    end
  end
end

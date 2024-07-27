# frozen_string_literal: true

module Benchmark
  module Gems
    class Kinesis < Benchmark::Gem

      def gem_name
        'aws-sdk-kinesis'
      end

      def client_module_name
        'Aws::Kinesis'
      end

      def operation_benchmarks
        {
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
      end
    end
  end
end

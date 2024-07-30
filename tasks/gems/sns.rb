# frozen_string_literal: true

module Benchmark
  module Gems
    class SNS < Benchmark::Gem
      def gem_name
        'aws-sdk-sns'
      end

      def gem_dir
        "gems/#{gem_name}"
      end

      def client_module_name
        'Aws::SNS'
      end

      def operation_benchmarks
        {
          publish_small: {
            setup: proc do |_client|
              { topic_arn: 'topic', subject: 'subject', message: 'message' }
            end,
            test: proc do |client, req|
              client.publish(req)
            end
          },
          publish_large: {
            setup: proc do |_client|
              {
                topic_arn: 'topic',
                subject: 'subject',
                message: 'message' * 1000,
                message_attributes: (0..100).map do |i|
                  ["key#{i}", { data_type: 'String', string_value: "string data#{i}" }]
                end.to_h
              }
            end,
            test: proc do |client, req|
              client.publish(req)
            end
          }
        }
      end
    end
  end
end

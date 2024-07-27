# frozen_string_literal: true

module Benchmark
  module Gems
    class CloudWatchLogs < Benchmark::Gem
      def gem_name
        'aws-sdk-cloudwatchlogs'
      end

      def gem_dir
        "gems/#{gem_name}"
      end

      def client_module_name
        'Aws::CloudWatchLogs'
      end

      def operation_benchmarks
        {
          put_log_events_small: {
            setup: proc do |_client|
              { log_group_name: 'log_group', log_stream_name: 'log_stream', log_events: (0...5).map do |i|
                                                                                          { timestamp: Time.now.to_i, message: "test log event #{i}" }
                                                                                        end }
            end,
            test: proc do |client, req|
              client.put_log_events(req)
            end
          },
          put_log_events_large: {
            setup: proc do |_client|
              { log_group_name: 'log_group', log_stream_name: 'log_stream', log_events: (0...5000).map do |i|
                                                                                          { timestamp: Time.now.to_i, message: "test log event #{i} - #{TestData.random_value(i)}" }
                                                                                        end }
            end,
            test: proc do |client, req|
              client.put_log_events(req)
            end
          },
          get_log_events_small: {
            setup: proc do |client|
              client.stub_responses(:get_log_events, [{ events: (0...5).map do |i|
                                                                  { timestamp: Time.now.to_i, message: "test log event #{i} - #{TestData.random_value(i)}" }
                                                                end }])
              { log_group_name: 'log_group', log_stream_name: 'log_stream' }
            end,
            test: proc do |client, req|
              client.get_log_events(req)
            end
          },
          get_log_events_large: {
            setup: proc do |client|
              client.stub_responses(:get_log_events, [{ events: (0...5000).map do |i|
                                                                  { timestamp: Time.now.to_i, message: "test log event #{i} - #{TestData.random_value(i)}" }
                                                                end }])
              { log_group_name: 'log_group', log_stream_name: 'log_stream' }
            end,
            test: proc do |client, req|
              client.get_log_events(req)
            end
          },
          filter_log_events_large: {
            setup: proc do |client|
              client.stub_responses(:filter_log_events, [{ events: (0...5000).map do |i|
                                                                     { timestamp: Time.now.to_i, message: "test log event #{i} - #{TestData.random_value(i)}" }
                                                                   end }])
              { log_group_name: 'log_group', log_stream_names: ['log_stream'], start_time: 1, end_time: 1000 }
            end,
            test: proc do |client, req|
              client.filter_log_events(req)
            end
          }
        }
      end
    end
  end
end

# frozen_string_literal: true

module Benchmark
  module Service
    module CloudWatch
      GEM_NAME = 'aws-sdk-cloudwatch'.freeze

      BENCHMARKS = {
        module: :CloudWatch,
        benchmarks: {
          put_metric_data_small: {
            setup: proc do |client|
              {namespace: 'namespace', metric_data: [{metric_name: "metric", timestamp: Time.now, value: 1.0, unit: "Seconds"}]}
            end,
            test: proc do |client, req|
              client.put_metric_data(req)
            end
          },
          put_metric_data_large: {
            setup: proc do |client|
              {namespace: 'namespace', metric_data:
                (0...10).map do
                  {metric_name: "metric", timestamp: Time.now, values: (0...150).to_a, unit: "Seconds"}
                end}
            end,
            test: proc do |client, req|
              client.put_metric_data(req)
            end
          },
        }
      }
    end
  end
end

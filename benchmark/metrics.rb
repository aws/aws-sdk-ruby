# frozen_string_literal: true

module Benchmark
  # put metrics generated from `run_benchmarks` to cloudwatch
  def self.put_metric(client, dims, timestamp, k, v)
    return unless v.is_a?(Numeric) || v.is_a?(Array)
    # attempt to determine unit
    unit_suffix = k.split("_").last
    unit = {
      'kb' => 'Kilobytes',
      'b' => 'Bytes',
      's' => 'Seconds',
      'ms' => 'Milliseconds'
    }.fetch(unit_suffix, 'None')

    metric_data = {
      metric_name: k,
      timestamp: timestamp,
      unit: unit,
      dimensions: dims.map { |k,v| {name: k.to_s, value: v} }
    }

    case v
    when Numeric
      metric_data[:value] = v
      client.put_metric_data(namespace: "sdk-performance", metric_data: [metric_data])
    when Array
      # cloudwatch has a limit of 150 values
      v.each_slice(150) do |values|
        metric_data[:values] = values
        client.put_metric_data(namespace: "sdk-performance", metric_data: [metric_data])
      end
    else
      raise 'Unknown type for metric value'
    end
  end
end

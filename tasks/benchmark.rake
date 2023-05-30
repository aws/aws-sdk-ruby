# frozen_string_literal: true


desc 'Runs a performance benchmark on the SDK'
task 'benchmark' do
  sh('bundle exec ruby bin/benchmark_performance.rb')
end

desc 'Upload/archive the benchmark report'
task 'benchmark:archive' do
  $:.unshift("#{$GEMS_DIR}/aws-sdk-s3/lib")
  $:.unshift("#{$GEMS_DIR}/aws-sdk-kms/lib")
  require 'aws-sdk-s3'
  require 'securerandom'


  puts "Archiving benchmark report from GH with: #{ENV['GH_REF']}, #{ENV['GH_EVENT']}"
  ref = ENV['GH_REF'] || "version-3"
  event = ENV['GH_EVENT'] || 'push'
  client = Aws::S3::Client.new

  key = "#{event == 'pull_request' ? 'pr/' + ref : 'release'}/#{Time.now.strftime('%Y-%m-%d')}/benchmark_#{SecureRandom.uuid}.json"
  puts "Uploading report to: #{key}"
  client.put_object(bucket: 'aws-sdk-ruby-performance-benchmark-archive', key: key, body: File.read('benchmark_report.json'))
  puts "Upload complete"
end

desc 'Upload benchmarking data to cloudwatch'
task 'benchmark:put-metrics' do
  $:.unshift("#{$GEMS_DIR}/aws-sdk-cloudwatch/lib")
  require 'aws-sdk-cloudwatch'

  event = ENV['GH_EVENT'] == 'pull_request' ? 'pr' : 'release'
  report = JSON.parse(File.read('benchmark_report.json'))
  target = report['ruby_engine'] + "-" + report['ruby_version'].split('.').first(2).join('.') # TODO: How do we want to capture the environment

  # common dimensions
  report_dims = {
    event: event,
    target: target,
    os: report['os'],
    cpu: report['cpu'],
    env: report['execution_env']
  }

  def put_metric(client, dims, timestamp, k, v)
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

  puts "Uploading benchmarking metrics"

  client = Aws::CloudWatch::Client.new

  benchmark_data = report["benchmark"]
  benchmark_data.each do |gem_name, gem_data|
    dims = report_dims.merge(gem: gem_name)
    gem_data.each do |k,v|
      put_metric(client, dims, report['timestamp'] || Time.now, k, v)
    end
  end
  puts "Benchmarking metrics uploaded"
end
# frozen_string_literal: true


desc 'Runs a performance benchmark on the SDK'
task 'benchmark' do
  sh('bundle exec ruby benchmark/run_benchmark.rb')
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
  require_relative '../benchmark/metrics'

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

  puts "Uploading benchmarking metrics"

  client = Aws::CloudWatch::Client.new

  benchmark_data = report["benchmark"]
  benchmark_data.each do |gem_name, gem_data|
    dims = report_dims.merge(gem: gem_name)
    gem_data.each do |k,v|
      Benchmark.put_metric(client, dims, report['timestamp'] || Time.now, k, v)
    end
  end
  puts "Benchmarking metrics uploaded"
end
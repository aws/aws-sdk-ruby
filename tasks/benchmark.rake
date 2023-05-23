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

  report = JSON.parse(File.read('benchmark_report.json'))
  key = "#{event == 'pull_request' ? 'pr/' + ref : 'release'}/#{Time.now.strftime('%Y-%m-%d')}/benchmark_#{SecureRandom.uuid}.json"
  puts "Uploading report to: #{key}"
  client.put_object(bucket: 'aws-sdk-ruby-performance-benchmark-archive', key: key, body: File.read('benchmark_report.json'))
  puts "Upload complete"
end
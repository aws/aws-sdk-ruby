#!/usr/bin/env ruby
# frozen_string_literal: true

# Reproduction for https://github.com/aws/aws-sdk-ruby/issues/3393
# Object#upload_stream retains unbounded memory when the source outpaces the upload.
#
# This script demonstrates the bug and verifies the fix by:
# 1. Simulating a fast writer (200 MB) feeding a slow S3 upload (0.1s per 5 MB part)
# 2. Measuring peak memory (RSS) during the upload
#
# BUG behavior (unbounded Queue):  ~200 MB memory growth (all parts buffered)
# FIX behavior (SizedQueue):       ~30-50 MB memory growth (bounded to thread count)
#
# Usage: ruby repro_upload_stream.rb
#   Run from the aws-sdk-ruby repo root on the fix/upload_stream branch.

$LOAD_PATH.unshift(File.expand_path('gems/aws-sdk-s3/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('gems/aws-sigv4/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('gems/aws-partitions/lib', __dir__))

require 'aws-sdk-s3'

PART_SIZE = 5 * 1024 * 1024  # 5 MB (S3 default)
NUM_PARTS = 40               # 200 MB total
TOTAL_DATA = PART_SIZE * NUM_PARTS
MAX_THREADS = 4
SIMULATED_UPLOAD_DELAY = 0.1 # seconds per part (simulates slow network)

def rss_mb
  `ps -o rss= -p #{Process.pid}`.strip.to_i / 1024.0
end

puts "=== Reproduction: upload_stream unbounded memory (issue #3393) ==="
puts
puts "Configuration:"
puts "  Part size:       #{PART_SIZE / (1024*1024)} MB"
puts "  Total parts:     #{NUM_PARTS}"
puts "  Total data:      #{TOTAL_DATA / (1024*1024)} MB"
puts "  Max threads:     #{MAX_THREADS}"
puts "  Upload delay:    #{SIMULATED_UPLOAD_DELAY}s per part"
puts

# Verify source and queue type
source_file = Aws::S3::DefaultExecutor.instance_method(:initialize).source_location[0]
puts "DefaultExecutor source: #{source_file}"
test_executor = Aws::S3::DefaultExecutor.new(max_threads: MAX_THREADS)
queue = test_executor.instance_variable_get(:@queue)
puts "Queue type: #{queue.class} (max: #{queue.respond_to?(:max) ? queue.max : 'unbounded'})"
test_executor.shutdown
puts

# Set up stubbed client (no real AWS calls)
client = Aws::S3::Client.new(region: 'us-east-1', stub_responses: true)
client.stub_responses(:create_multipart_upload, { upload_id: 'test-upload-id' })
client.stub_responses(:upload_part, ->(context) {
  sleep(SIMULATED_UPLOAD_DELAY)
  { etag: "\"etag-#{context.params[:part_number]}\"" }
})
client.stub_responses(:complete_multipart_upload, {
  location: 'https://bucket.s3.amazonaws.com/key',
  bucket: 'test-bucket',
  key: 'test-key',
  etag: '"final-etag"'
})

tm = Aws::S3::TransferManager.new(client: client)

baseline_rss = rss_mb
peak_rss = baseline_rss

sampler = Thread.new do
  loop do
    current = rss_mb
    peak_rss = current if current > peak_rss
    sleep(0.01)
  end
end

puts "Baseline RSS: #{baseline_rss.round(1)} MB"
puts "Uploading #{TOTAL_DATA / (1024*1024)} MB with #{MAX_THREADS} threads..."
start_time = Time.now

tm.upload_stream(
  bucket: 'test-bucket',
  key: 'test-key',
  part_size: PART_SIZE,
  thread_count: MAX_THREADS
) do |write_stream|
  chunk = 'x' * (1024 * 1024) # write in 1 MB chunks (fast local source)
  bytes_written = 0
  while bytes_written < TOTAL_DATA
    write_stream.write(chunk)
    bytes_written += chunk.size
  end
end

elapsed = Time.now - start_time
sampler.kill

memory_growth = peak_rss - baseline_rss

puts "Done in #{elapsed.round(2)}s"
puts
puts "=== Memory Results ==="
puts "  Peak RSS:        #{peak_rss.round(1)} MB"
puts "  Memory growth:   #{memory_growth.round(1)} MB"
puts

# With backpressure (SizedQueue), expect bounded memory:
#   ~max_threads * part_size + pipe buffer + overhead ≈ 30-50 MB
# Without backpressure (Queue), all 40 parts buffer in memory:
#   ~40 * 5 MB = 200 MB growth
bounded_limit_mb = (MAX_THREADS + 2) * (PART_SIZE / (1024.0 * 1024)) + 50

if memory_growth < bounded_limit_mb
  puts "PASS: Memory is bounded (#{memory_growth.round(1)} MB < #{bounded_limit_mb.round(0)} MB limit)"
  puts "      The SizedQueue backpressure is working correctly."
else
  puts "FAIL: Memory grew unbounded (#{memory_growth.round(1)} MB > #{bounded_limit_mb.round(0)} MB limit)"
  puts "      All #{NUM_PARTS} parts (#{NUM_PARTS * PART_SIZE / (1024*1024)} MB) were buffered in the queue."
  puts "      This confirms bug #3393."
end

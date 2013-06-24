# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

begin
  require 'simplecov'
  SimpleCov.start
rescue LoadError
end if ENV['COVERAGE']

$: << File.join(File.dirname(File.dirname(File.dirname(__FILE__))), "lib")

require 'aws-sdk'
require 'yaml'

# try to find a config file
dir = Dir.getwd
while dir != "/" and
    !File.exists?(File.join(dir, ".ruby_sdk_test_config.yml"))
  dir = File.dirname(dir)
end
test_config_file = File.join(dir, ".ruby_sdk_test_config.yml")
test_config_file = File.join(ENV["HOME"], ".ruby_sdk_test_config.yml") unless
  File.exists?(test_config_file)
if File.exists?(test_config_file)
  test_config = YAML.load(File.read(test_config_file))
end

if ENV['SLOW'] == 'true'
  puts "setup slow stuff"
end

at_exit do
  if ENV['SLOW'] == 'true'
    puts "take down slow stuff"
  end
end

if ENV['LOGGING'] == 'true'
  require 'logger'
  logger = Logger.new(STDOUT)
  logger.formatter = proc do |severity, datetime, progname, msg|

    bold = "\x1b[1m"
    color = "\x1b[34m"
    reset = "\x1b[0m"

    msg.gsub(/^(.*?\])/, "#{bold}#{color}\\1#{reset}#{bold}") + reset

  end
  test_config[:logger] = logger
end

AfterConfiguration do
  AWS.config(test_config) if test_config
  handler = AWS::Core::Http::Handler.new(AWS.config.http_handler) do |req, resp, read_block|
    (@requests_made ||= []) << req
    super(req, resp, &read_block)
    @last_response = resp
  end
  class << handler
    attr_reader :requests_made
    attr_reader :last_response
  end
  AWS.config(:http_handler => handler)
end

Before do
  @buckets_created = []
  @sdb_domains_created = []
  @http_handler = AWS.config.http_handler
  @test_config = Hash.new do |cfg, key|
    pending("please configure #{key.inspect} in .ruby_sdk_test_config.yml")
  end
  (test_config || {}).each_pair do |key, value|
    @test_config[key] = value
  end
end

After do |scenario|
  @buckets_created.each do |bucket_name,endpoint|
    begin
      begin
        list = @s3_client.list_object_versions({
          :bucket_name => bucket_name,
          :key_marker => (list ? list.next_key_marker : nil),
          :version_id_marker => (list ? list.next_version_id_marker : nil),
          :endpoint => endpoint,
        })
        list.versions.each do |version|
          @s3_client.delete_object({
            :bucket_name => bucket_name,
            :key => version.key,
            :version_id => version.version_id,
            :endpoint => endpoint,
          })
        end
      end while list.truncated?
    rescue
      # ignore
    end
    @s3_client.delete_bucket(:bucket_name => bucket_name, :endpoint => endpoint) rescue nil
  end
  @http_handler.requests_made.clear if @http_handler.requests_made
end

## simple db

Before('@s3') do
  @s3 = S3.new
  @s3_client = @s3.client
end

Before('@simple_db') do
  @sdb = SimpleDB.new
  @sdb_client = @sdb.client
end

After do |scenario|
  @sdb_domains_created.each do |domain_name,endpoint|
    @sdb_client.with_options(:sdb_endpoint => endpoint).
      delete_domain(:domain_name => domain_name)
  end
end

## log repeated service failures as pending

Around do |scenario, block|
  retries = 0
  begin
    block.call
  rescue => e
    if e.to_s =~ /AccessDenied|OperationAborted|ServiceUnavailable/ and retries == 0
      retries += 1
      retry
    else
      pending("Service is misbehaving")
    end
  end
end

def eventually(seconds = 60*5)
  sleeps = [1]
  while sleeps.inject(0) { |sum, i| sum + i } < seconds
    sleeps << sleeps.last * 1.2
  end
  request_count = (@http_handler.requests_made || []).size
  begin
    yield
  rescue => e
    unless sleeps.empty? or
        # no additional requests were made, it's probably a coding error
        # in the test
        request_count == (@http_handler.requests_made || []).size
      sleep(sleeps.shift)
      request_count = (@http_handler.requests_made || []).size
      retry
    end
    raise e
  end
end

def tempfile(contents)
  f = Tempfile.new("aws-sdk-cucumber")
  path = f.path
  f.close
  f.unlink
  File.open(path, "w+b") do |f|
    f.write(contents)
    f.flush
    yield(f)
  end
end

def unique_name prefix
  prefix == '' ? '' : "#{prefix}-#{Time.now.to_i}"
end

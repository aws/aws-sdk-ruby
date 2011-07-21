# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

$: << File.join(File.dirname(File.dirname(File.dirname(__FILE__))), "lib")

require 'aws'

require 'mocha'
include Mocha::API
require 'net/http'
require 'uri'
require 'yaml'

# find a config file
dir = Dir.getwd
while dir != "/" and
    !File.exists?(File.join(dir, ".ruby_sdk_test_config.yml"))
  dir = File.dirname(dir)
end
test_config_file = File.join(dir, ".ruby_sdk_test_config.yml")
test_config_file = File.join(ENV["HOME"], ".ruby_sdk_test_config.yml") unless
  File.exists?(test_config_file)
raise "No config file" unless File.exists?(test_config_file)
test_config = YAML.load(File.read(test_config_file))

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
  AWS.config(test_config)
  #require 'amazon/aws/http/event_machine_handler'
  #AWS.config(:http_handler => AWS::Http::EventMachineHandler.new)
  handler = AWS::Http::Handler.new(AWS.config.http_handler) do |req, resp|
    @requests_made ||= []
    @requests_made << req
    super(req, resp)
  end
  class << handler
    attr_reader :requests_made
  end
  AWS.config(:http_handler => handler)
end

Before do
  @buckets_created = []
  @sdb_domains_created = []
  @http_handler = AWS.config.http_handler
  @test_config = test_config
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

## helpers for creating domains / buckets in a way that they will get cleaned up

def create_bucket_low_level options = {}
  options[:bucket_name] ||= "ruby-integration-test-#{Time.now.to_i}"
  @bucket_name = options[:bucket_name]
  @endpoint = options[:endpoint] || @s3_client.config.s3_endpoint
  @result = @s3_client.create_bucket(options)
  @buckets_created << [@bucket_name, @endpoint]
  sleep 0.5 # Dumb insurance against eventual consistency
end

def create_bucket_high_level options = {}
  @bucket_name = options.delete(:name) || "ruby-integration-test-#{Time.now.to_i}"
  @endpoint = @s3.client.config.s3_endpoint
  @bucket = @s3.buckets.create(@bucket_name, options)
  @buckets_created << [@bucket_name, @endpoint]
end

def create_domain_low_level options = {}
  @domain_name = options[:domain_name]
  @endpoint = options.delete(:endpoint) || @sdb_client.config.simple_db_endpoint
  @response = @sdb_client.with_options(:simple_db_endpoint => @endpoint).
    create_domain(options)
  @sdb_domains_created << [@domain_name, @endpoint]
end

def create_domain_high_level name = nil
  @domain_name = name || "ruby-integration-test-#{Time.now.to_i}"
  @endpoint = @sdb.client.config.simple_db_endpoint
  @domain = @sdb.domains.create(@domain_name)
  @sdb_domains_created << [@domain_name, @endpoint]
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

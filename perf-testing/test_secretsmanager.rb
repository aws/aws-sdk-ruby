# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-secretsmanager/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-secretsmanager'
require 'aws-sdk-core/plugins/protocols/rpc_v2'
require 'securerandom'
require_relative 'Stats'
include Stats

WARMUP = 5
SIZES = [64, 512, 4096, 8192, 45_056].freeze
ASCII = "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".chars
iterations = ARGV.first.to_i
run_start_timestamp = Time.now.to_i

def generate_create_secret_request(timestamp, iteration)
  {
    name: "TestSecret_#{timestamp}_#{iteration}",
    secret_string: 'A temporary secret value',
    description: "The testing secret for run #{iteration}",
    tags: [
      {
        key: 'Stage',
        value: 'Production'
      },
      {
        key: 'Iteration',
        value: iteration
      }
    ]
  }
end

def generate_binary_create_secret_request(timestamp, iteration)
  {
    name: "TestBinarySecret_#{timestamp}_#{iteration}",
    secret_string: 'A temporary secret value',
    description: "The binary testing secret for run #{iteration}",
    tags: [
      {
        key: 'Stage',
        value: 'Production'
      },
      {
        key: 'Iteration',
        value: iteration
      }
    ]
  }
end

def generate_put_secret_value_request(timestamp, iteration, size)
  {
    secret_id: "TestSecret_#{timestamp}_#{iteration}",
    secret_string: (0...size).map { ASCII[rand(ASCII.length)] }.join
  }
end

def generate_binary_put_secret_value_request(timestamp, iteration, size)
  {
    secret_id: "TestBinarySecret_#{timestamp}_#{iteration}",
    secret_binary: Random.bytes(size)
  }
end

def generate_get_secret_value_request(timestamp, iteration)
  {
    secret_id: "TestSecret_#{timestamp}_#{iteration}"
  }
end

def generate_binary_get_secret_value_request(timestamp, iteration)
  {
    secret_id: "TestBinarySecret_#{timestamp}_#{iteration}"
  }
end

def generate_describe_secret_request(timestamp, iteration)
  {
    secret_id: "TestSecret_#{timestamp}_#{iteration}"
  }
end

def generate_list_secrets_request(iteration)
  {
    filters: [
      {
        key: 'tag-key',
        values: ['Iteration']
      },
      {
        key: 'tag-value',
        values: [iteration]
      }
    ]
  }
end

def generate_delete_secret_request(timestamp, iteration)
  {
    secret_id: "TestSecret_#{timestamp}_#{iteration}",
    force_delete_without_recovery: true
  }
end

def generate_binary_delete_secret_request(timestamp, iteration)
  {
    secret_id: "TestBinarySecret_#{timestamp}_#{iteration}",
    force_delete_without_recovery: true
  }
end

def separate_byte_data(data)
  separated = Array.new(2) { [] }
  data.each_with_index do |i, idx|
    if idx.even?
      separated[0] << i
    else
      separated[1] << i
    end
  end
  separated
end

def format_test_output(operation, protocol, dimension, metric, input, output, iterations)
  input.sort!
  result = {
    service: 'SecretsManager',
    test_case: operation,
    protocol: protocol,
    dimension_value: dimension,
    metric: metric,
    p50: p50(input),
    p90: p90(input),
    max: input.last,
    n: iterations
  }
  output << result
end

def output_raw(thread, outfile)
  $stdout = outfile
  puts 'Json Total Data Raw'
  pp thread[:json_total_data]
  puts 'Cbor Total Data Raw'
  pp thread[:cbor_total_data]
  puts 'Json Serialization Data Raw'
  pp thread[:json_ser_data]
  puts 'Cbor Serialization Data Raw'
  pp thread[:cbor_ser_data]
  puts 'Json Deserialization Data Raw'
  pp thread[:json_deser_data]
  puts 'Cbor Deserialization Data Raw'
  pp thread[:cbor_deser_data]
  puts 'Request Size Data Raw (Alternating Json and CBOR)'
  pp thread[:request_size_data]
  puts 'Response Size Data Raw (Alternating Json and CBOR)'
  pp thread[:response_size_data]
  $stdout = STDOUT
end

def clear_thread_data(thread)
  thread[:json_ser_data] = []
  thread[:json_deser_data] = []
  thread[:cbor_ser_data] = []
  thread[:cbor_deser_data] = []
  thread[:json_total_data] = []
  thread[:cbor_total_data] = []
  thread[:request_size_data] = []
  thread[:response_size_data] = []
end

def analyze(test_case, metrics, thread, raw, output, iterations)
  raw.puts("Test case: #{test_case} #{metrics}")
  output_raw(thread, raw)

  separated_request_size = separate_byte_data(thread[:request_size_data])
  separated_response_size = separate_byte_data(thread[:response_size_data])

  measurements = get_measurements

  json_data = [thread[:json_total_data], thread[:json_ser_data], thread[:json_deser_data], separated_request_size[0],
               separated_response_size[0]]
  json_data.each_with_index do |data, idx|
    format_test_output(test_case, 'JSON', metrics, measurements[idx], data, output, iterations)
  end

  cbor_data = [thread[:cbor_total_data], thread[:cbor_ser_data], thread[:cbor_deser_data], separated_request_size[1],
               separated_response_size[1]]
  cbor_data.each_with_index do |data, idx|
    format_test_output(test_case, 'CBOR', metrics, measurements[idx], data, output, iterations)
  end

  clear_thread_data(thread)
end

def make_and_time_request(request, command, json_ssm, cbor_ssm, thread)
  case command
  when 'put'
    thread[:json_total_data] << Aws::Util.benchmark do
      json_ssm.put_secret_value(request)
    end
    thread[:cbor_total_data] << Aws::Util.benchmark do
      cbor_ssm.put_secret_value(request)
    end
  when 'get'
    thread[:json_total_data] << Aws::Util.benchmark do
      json_ssm.get_secret_value(request)
    end
    thread[:cbor_total_data] << Aws::Util.benchmark do
      cbor_ssm.get_secret_value(request)
    end
  when 'describe'
    thread[:json_total_data] << Aws::Util.benchmark do
      json_ssm.describe_secret(request)
    end
    thread[:cbor_total_data] << Aws::Util.benchmark do
      cbor_ssm.describe_secret(request)
    end
  else
    thread[:json_total_data] << Aws::Util.benchmark do
      json_ssm.list_secrets(request)
    end
    thread[:cbor_total_data] << Aws::Util.benchmark do
      cbor_ssm.list_secrets(request)
    end
  end
end

thread = Thread.current
clear_thread_data(thread)

Aws::SecretsManager::Client.remove_plugin(Aws::Plugins::Protocols::JsonRpc)
json_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::JsonRpc], region: 'us-west-2')
cbor_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')
cbor_ssm.config.api = cbor_ssm.config.api.dup
cbor_ssm.config.api.metadata = cbor_ssm.config.api.metadata.dup
cbor_ssm.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

path = __dir__
FileUtils.mkdir_p("#{path}/test-output/secretsmanager")
data = File.open("#{path}/test-output/secretsmanager/data.json", 'w')
raw = File.open("#{path}/test-output/secretsmanager/raw.txt", 'w')
output = []

(0...iterations).each do |i|
  request = generate_create_secret_request(run_start_timestamp, i.to_s.rjust(3, '0'))
  json_ssm.create_secret(request)
  request = generate_binary_create_secret_request(run_start_timestamp, i.to_s.rjust(3, '0'))
  cbor_ssm.create_secret(request)
end

# Warm up
if iterations > WARMUP
  SIZES.each do |size|
    (0...WARMUP).each do |i|
      request = generate_put_secret_value_request(run_start_timestamp, i.to_s.rjust(3, '0'), size)
      json_ssm.put_secret_value(request)
      cbor_ssm.put_secret_value(request)
    end
    (0...WARMUP).each do |i|
      request = generate_binary_put_secret_value_request(run_start_timestamp, i.to_s.rjust(3, '0'), size)
      json_ssm.put_secret_value(request)
      cbor_ssm.put_secret_value(request)
    end
    (0...WARMUP).each do |i|
      request = generate_get_secret_value_request(run_start_timestamp, i.to_s.rjust(3, '0'))
      json_ssm.get_secret_value(request)
      cbor_ssm.get_secret_value(request)
    end
    (0...WARMUP).each do |i|
      request = generate_binary_get_secret_value_request(run_start_timestamp, i.to_s.rjust(3, '0'))
      json_ssm.get_secret_value(request)
      cbor_ssm.get_secret_value(request)
    end
  end
  (0...WARMUP).each do |i|
    request = generate_describe_secret_request(run_start_timestamp, i.to_s.rjust(3, '0'))
    json_ssm.describe_secret(request)
    cbor_ssm.describe_secret(request)
  end
  (0...WARMUP).each do |i|
    request = generate_list_secrets_request(i.to_s.rjust(3, '0'))
    json_ssm.list_secrets(request)
    cbor_ssm.list_secrets(request)
  end
end
clear_thread_data(thread)

SIZES.each do |size|
  # Put secret value (string)
  (0...iterations).each do |i|
    request = generate_put_secret_value_request(run_start_timestamp, i.to_s.rjust(3, '0'), size)
    make_and_time_request(request, 'put', json_ssm, cbor_ssm, thread)
  end
  analyze('Put string secret', size, thread, raw, output, iterations)
  # Put secret value (binary)
  (0...iterations).each do |i|
    request = generate_binary_put_secret_value_request(run_start_timestamp, i.to_s.rjust(3, '0'), size)
    make_and_time_request(request, 'put', json_ssm, cbor_ssm, thread)
    request[:secret_binary] = request[:secret_binary].force_encoding('ISO-8859-1').encode('UTF-8')
  end
  analyze('Put binary secret', size, thread, raw, output, iterations)
  # Get secret value (string)
  (0...iterations).each do |i|
    request = generate_get_secret_value_request(run_start_timestamp, i.to_s.rjust(3, '0'))
    make_and_time_request(request, 'get', json_ssm, cbor_ssm, thread)
  end
  analyze('Get string secret', size, thread, raw, output, iterations)
  # Get secret value (binary)
  (0...iterations).each do |i|
    request = generate_binary_get_secret_value_request(run_start_timestamp, i.to_s.rjust(3, '0'))
    make_and_time_request(request, 'get', json_ssm, cbor_ssm, thread)
  end
  analyze('Get binary secret', size, thread, raw, output, iterations)
end

(0...iterations).each do |i|
  request = generate_describe_secret_request(run_start_timestamp, i.to_s.rjust(3, '0'))
  make_and_time_request(request, 'describe', json_ssm, cbor_ssm, thread)
end
analyze('Describe secret', 0, thread, raw, output, iterations)

(0...iterations).each do |i|
  request = generate_list_secrets_request(i.to_s.rjust(3, '0'))
  make_and_time_request(request, 'list', json_ssm, cbor_ssm, thread)
end
analyze('List secrets', 0, thread, raw, output, iterations)

thread[:warm] = false
(0...iterations).each do |i|
  request = generate_delete_secret_request(run_start_timestamp, i.to_s.rjust(3, '0'))
  json_ssm.delete_secret(request)
  request = generate_binary_delete_secret_request(run_start_timestamp, i.to_s.rjust(3, '0'))
  cbor_ssm.delete_secret(request)
end

data.puts(JSON.pretty_generate(output))

data.close
raw.close

$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-secretsmanager/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-secretsmanager'
require 'aws-sdk-core/plugins/protocols/rpc_v2'
require 'securerandom'
require_relative 'Stats'
include Stats

ITERATIONS = ARGV.first.to_i
WARMUP = 10
SIZES = [64, 512, 4096, 8192, 45056]
RUN_START_TIMESTAMP = Time.now.to_i
ASCII = "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".chars
MEASUREMENTS = ['Total request time (ms)', 'Serialization time (ms)', 'Deserialization time (ms)',
                'Request payload size (bytes)', 'Response payload size (bytes)']

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

def separate_serde_data(data)
  separated = Array.new(2) { [] }
  data.each do |i|
    separated[0] << i[0]
    separated[1] << i[1]
  end
  separated
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

def write_test_output(operation, protocol, dimension, metric, input, outfile)
  input.sort!
  result = {
    "service": 'SecretsManager',
    "test_case": operation,
    "protocol": protocol,
    "dimension_value": dimension,
    "metric": metric,
    "p50": p50(input),
    "p90": p90(input),
    "max": input.last,
    "n": ITERATIONS
  }
  outfile.puts(JSON.pretty_generate(result))
end

def output_raw(thread, outfile)
  $stdout = outfile
  puts 'Json Serde Data Raw'
  pp thread[:json_serde_data]
  puts 'Cbor Serde Data Raw'
  pp thread[:cbor_serde_data]
  puts 'Json Total Data Raw'
  pp thread[:json_total_data]
  puts 'Cbor Total Data Raw'
  pp thread[:cbor_total_data]
  puts 'Request Size Data Raw (Alternating Json and CBOR)'
  pp thread[:request_size_data]
  puts 'Response Size Data Raw (Alternating Json and CBOR)'
  pp thread[:response_size_data]
  $stdout = STDOUT
end

def clear_thread_data(thread)
  thread[:json_serde_data] = []
  thread[:cbor_serde_data] = []
  thread[:json_total_data] = []
  thread[:cbor_total_data] = []
  thread[:request_size_data] = []
  thread[:response_size_data] = []
end

def analyze(test_case, metrics, thread, data, raw)
  raw.puts("Test case: #{test_case} #{metrics}")
  output_raw(thread, raw)

  separated_request_size = separate_byte_data(thread[:request_size_data])
  # pp separated_request_size
  separated_response_size = separate_byte_data(thread[:response_size_data])
  # pp separated_response_size

  separated_json_serde = separate_serde_data(thread[:json_serde_data])
  write_test_output(test_case, 'JSON', metrics, 'Serialization time (ms)', separated_json_serde[0], data)
  write_test_output(test_case, 'JSON', metrics, 'Deserialization time (ms)', separated_json_serde[1], data)
  write_test_output(test_case, 'JSON', metrics, 'Total request time (ms)', thread[:json_total_data], data)
  write_test_output(test_case, 'JSON', metrics, 'Request payload size (bytes)', separated_request_size[0], data)
  write_test_output(test_case, 'JSON', metrics, 'Response payload size (bytes)', separated_response_size[0], data)

  separated_cbor_serde = separate_serde_data(thread[:cbor_serde_data])
  write_test_output(test_case, 'CBOR', metrics, 'Serialization time (ms)', separated_cbor_serde[0], data)
  write_test_output(test_case, 'CBOR', metrics, 'Deserialization time (ms)', separated_cbor_serde[1], data)
  write_test_output(test_case, 'CBOR', metrics, 'Total request time (ms)', thread[:cbor_total_data], data)
  write_test_output(test_case, 'CBOR', metrics, 'Request payload size (bytes)', separated_request_size[1], data)
  write_test_output(test_case, 'CBOR', metrics, 'Response payload size (bytes)', separated_response_size[1], data)

  clear_thread_data(thread)
end

def make_and_time_request(request, command, json_ssm, cbor_ssm, thread)
  case command
  when 'put'
    t_json_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    json_ssm.put_secret_value(request)
    t_json_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:json_total_data] << format('%.3f', (t_json_total_end - t_json_total_start) * 1000.0).to_f
    t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    cbor_ssm.put_secret_value(request)
    t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0).to_f
  when 'get'
    t_json_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    json_ssm.get_secret_value(request)
    t_json_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:json_total_data] << format('%.3f', (t_json_total_end - t_json_total_start) * 1000.0).to_f
    t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    cbor_ssm.get_secret_value(request)
    t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0).to_f
  when 'describe'
    t_json_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    json_ssm.describe_secret(request)
    t_json_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:json_total_data] << format('%.3f', (t_json_total_end - t_json_total_start) * 1000.0).to_f
    t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    cbor_ssm.describe_secret(request)
    t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0).to_f
  else
    t_json_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    json_ssm.list_secrets(request)
    t_json_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:json_total_data] << format('%.3f', (t_json_total_end - t_json_total_start) * 1000.0).to_f
    t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    cbor_ssm.list_secrets(request)
    t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0).to_f
  end
end

t_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)

thread = Thread.current
thread[:json_serde_data] = []
thread[:cbor_serde_data] = []
thread[:json_total_data] = []
thread[:cbor_total_data] = []
thread[:request_size_data] = []
thread[:response_size_data] = []
thread[:warm] = false

Aws::SecretsManager::Client.remove_plugin(Aws::Plugins::Protocols::JsonRpc)
json_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::JsonRpc], region: 'us-west-2')
cbor_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')
cbor_ssm.config.api = cbor_ssm.config.api.dup
cbor_ssm.config.api.metadata = cbor_ssm.config.api.metadata.dup
cbor_ssm.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

data = File.open('perf-testing/test-output/secretsmanager/data.txt', 'w')
raw = File.open('perf-testing/test-output/secretsmanager/raw.txt', 'w')
# requests = File.open('perf-testing/test-output/secretsmanager/# requests.txt', 'w')

(0...ITERATIONS).each do |i|
  request = generate_create_secret_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'))
  json_ssm.create_secret(request)
  request = generate_binary_create_secret_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'))
  cbor_ssm.create_secret(request)
end

# Warm up
thread[:warm] = true

SIZES.each do |size|
  # Put secret value (string)
  (0...ITERATIONS).each do |i|
    request = generate_put_secret_value_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'), size)
    make_and_time_request(request, 'put', json_ssm, cbor_ssm, thread)
    # requests.puts(JSON.pretty_generate(request))
  end
  analyze('Put string secret', size, thread, data, raw)
  # Put secret value (binary)
  (0...ITERATIONS).each do |i|
    request = generate_binary_put_secret_value_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'), size)
    make_and_time_request(request, 'put', json_ssm, cbor_ssm, thread)
    request[:secret_binary] = request[:secret_binary].force_encoding('ISO-8859-1').encode('UTF-8')
    # requests.puts(JSON.pretty_generate(request))
  end
  analyze('Put binary secret', size, thread, data, raw)
  # Get secret value (string)
  (0...ITERATIONS).each do |i|
    request = generate_get_secret_value_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'))
    make_and_time_request(request, 'get', json_ssm, cbor_ssm, thread)
    # requests.puts(JSON.pretty_generate(request))
  end
  analyze('Get string secret', size, thread, data, raw)
  # Get secret value (binary)
  (0...ITERATIONS).each do |i|
    request = generate_binary_get_secret_value_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'))
    make_and_time_request(request, 'get', json_ssm, cbor_ssm, thread)
    # requests.puts(JSON.pretty_generate(request))
  end
  analyze('Get binary secret', size, thread, data, raw)
end

(0...ITERATIONS).each do |i|
  request = generate_describe_secret_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'))
  make_and_time_request(request, 'describe', json_ssm, cbor_ssm, thread)
  # requests.puts(JSON.pretty_generate(request))
end
analyze('Describe secret', 0, thread, data, raw)

(0...ITERATIONS).each do |i|
  request = generate_list_secrets_request(i.to_s.rjust(3, '0'))
  make_and_time_request(request, 'list', json_ssm, cbor_ssm, thread)
  # requests.puts(JSON.pretty_generate(request))
end
analyze('List secrets', 0, thread, data, raw)

thread[:warm] = false
(0...ITERATIONS).each do |i|
  request = generate_delete_secret_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'))
  json_ssm.delete_secret(request)
  request = generate_binary_delete_secret_request(RUN_START_TIMESTAMP, i.to_s.rjust(3, '0'))
  cbor_ssm.delete_secret(request)
end

data.close
raw.close

t_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
puts "Total time: #{t_end - t_start}"

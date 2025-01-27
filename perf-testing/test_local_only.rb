# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-echo/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-echo'
require 'aws-sdk-core/plugins/protocols/json_rpc'
require 'aws-sdk-core/plugins/protocols/rpc_v2'
require_relative 'Stats'
include Stats

ITERATIONS = ARGV.first.to_i
WARMUP = 10
ASCII = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".chars
INT_MIN = -2_147_483_648
INT_MAX = 2_147_483_647
LONG_MIN = -9_223_372_036_854_775_808
LONG_MAX = 9_223_372_036_854_775_807
FLOAT_MIN = -2_147_483_648.0
FLOAT_MAX = 2_147_483_647.0
DOUBLE_MIN = -9_223_372_036_854_775_808.0
DOUBLE_MAX = 9_223_372_036_854_775_807.0
run_start_timestamp = Time.now

def random_map_of_string_to_string
  map = {}
  8.times do
    key = (0...32).map { ASCII[rand(ASCII.length)] }.join
    value = (0...64).map { ASCII[rand(ASCII.length)] }.join
    map[key] = value
  end
  map
end

def random_all_types
  {
    boolean_member: rand(2) == 1,
    string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
    integer_member: rand(INT_MIN...INT_MAX),
    long_member: rand(LONG_MIN...LONG_MAX),
    float_member: rand(FLOAT_MIN...FLOAT_MAX),
    double_member: rand(DOUBLE_MIN...DOUBLE_MAX),
    timestamp_member: run_start_timestamp,
    blob_member: Random.bytes(128),
    list_of_strings_member: (0...8).map { (0...32).map { ASCII[rand(ASCII.length)] }.join },
    map_of_string_to_string_member: random_map_of_string_to_string,
    complex_struct_member: {
      string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
      complex_struct_member: {
        string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join
      }
    }
  }
end

def random_long_list_of_strings
  {
    list_of_strings_member: (0...256).map { (0...64).map { ASCII[rand(ASCII.length)] }.join }
  }
end

def random_complex_object
  {
    complex_struct_member: {
      boolean_member: rand(2) == 1,
      blob_member: Random.bytes(128),
      string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
      complex_struct_member: {
        integer_member: rand(INT_MIN...INT_MAX),
        long_member: rand(LONG_MIN...LONG_MAX),
        string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
        complex_struct_member: {
          float_member: rand(FLOAT_MIN...FLOAT_MAX),
          double_member: rand(DOUBLE_MIN...DOUBLE_MAX),
          string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
          complex_struct_member: {
            list_of_strings_member: (0...8).map { (0...32).map { ASCII[rand(ASCII.length)] }.join },
            complex_struct_member: {
              map_of_string_to_string_member: random_map_of_string_to_string
            }
          }
        }
      }
    }
  }
end

def random_list_of_complex_objects
  {
    list_of_complex_object_member: (0...64).map do
      {
        boolean_member: rand(2) == 1,
        string_member: (0...32).map { ASCII[rand(ASCII.length)] }.join,
        long_member: rand(LONG_MIN...LONG_MAX),
        double_member: rand(DOUBLE_MIN...DOUBLE_MAX),
        timestamp_member: run_start_timestamp,
        list_of_strings_member: (0...8).map { (0...32).map { ASCII[rand(ASCII.length)] }.join }
      }
    end
  }
end

def random_large_blob
  {
    blob_member: Random.bytes(262_144)
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

def write_test_output(operation, protocol, dimension, metric, input, outfile)
  input.sort!
  result = {
    service: 'Local only',
    test_case: operation,
    protocol: protocol,
    dimension_value: dimension,
    metric: metric,
    p50: p50(input),
    p90: p90(input),
    max: input.last,
    n: ITERATIONS
  }
  outfile.puts(JSON.pretty_generate(result))
end

def output_raw(thread, outfile)
  $stdout = outfile
  puts 'Json Serde Data Raw'
  pp thread[:json_serde_data]
  puts 'Cbor Serde Data Raw'
  pp thread[:cbor_serde_data]
  puts 'Request Size Data Raw (Alternating Json and CBOR)'
  pp thread[:request_size_data]
  puts 'Response Size Data Raw (Alternating Json and CBOR)'
  pp thread[:response_size_data]
  $stdout = STDOUT
end

def analyze(test_cases, measurements, input, protocol, data)
  test_cases.each do |test|
    measurements.each do |m|
      write_test_output(test, protocol, 0, m, input[test][m], data)
    end
  end
end

def separate_and_analyze(test_cases, measurements, thread, data, raw)
  raw.puts('All test cases')
  output_raw(thread, raw)

  json_full_serde_data = Array.new(5) { [] }
  json_full_request_data = Array.new(5) { [] }
  json_full_response_data = Array.new(5) { [] }
  thread[:json_serde_data].each_with_index do |d, i|
    json_full_serde_data[i % 5] << d
  end
  thread[:request_size_data].each_with_index do |d, i|
    json_full_request_data[i % 5] << d unless i % 10 > 4
  end
  thread[:response_size_data].each_with_index do |d, i|
    json_full_response_data[i % 5] << d unless i % 10 > 4
  end
  json_full_test_cases = {}
  (0...5).each do |i|
    separated = separate_serde_data(json_full_serde_data[i])
    current = {}
    current[measurements[0]] = separated[0]
    current[measurements[1]] = separated[1]
    current[measurements[2]] = json_full_request_data[i]
    current[measurements[3]] = json_full_response_data[i]
    json_full_test_cases[test_cases[i]] = current
  end
  analyze(test_cases, measurements, json_full_test_cases, 'JSON', data)

  cbor_full_serde_data = Array.new(5) { [] }
  cbor_full_request_data = Array.new(5) { [] }
  cbor_full_response_data = Array.new(5) { [] }
  thread[:cbor_serde_data].each_with_index do |d, i|
    cbor_full_serde_data[i % 5] << d
  end
  thread[:request_size_data].each_with_index do |d, i|
    cbor_full_request_data[i % 5] << d unless i % 10 < 5
  end
  thread[:response_size_data].each_with_index do |d, i|
    cbor_full_response_data[i % 5] << d unless i % 10 < 5
  end
  cbor_full_test_cases = {}
  (0...5).each do |i|
    separated = separate_serde_data(cbor_full_serde_data[i])
    current = {}
    current[measurements[0]] = separated[0]
    current[measurements[1]] = separated[1]
    current[measurements[2]] = cbor_full_request_data[i]
    current[measurements[3]] = cbor_full_response_data[i]
    cbor_full_test_cases[test_cases[i]] = current
  end
  analyze(test_cases, measurements, cbor_full_test_cases, 'CBOR', data)
end

thread = Thread.current
thread[:json_serde_data] = []
thread[:cbor_serde_data] = []
thread[:request_size_data] = []
thread[:response_size_data] = []
thread[:warm] = false

Aws::Echo::Client.remove_plugin(Aws::Plugins::Protocols::JsonRpc)
json_echo = Aws::Echo::Client.new(plugins: [Aws::Plugins::Protocols::JsonRpc], stub_responses: true)
cbor_echo = Aws::Echo::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], stub_responses: true)
cbor_echo.config.api = cbor_echo.config.api.dup
cbor_echo.config.api.metadata = cbor_echo.config.api.metadata.dup
cbor_echo.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

data = File.open('perf-testing/test-output/local-only/data.txt', 'w')
raw = File.open('perf-testing/test-output/local-only/raw.txt', 'w')

(0...(ITERATIONS + WARMUP)).each do |i|
  thread[:warm] = true if i == WARMUP

  all_types = random_all_types
  list_of_strings = random_long_list_of_strings
  complex_object = random_complex_object
  list_of_complex = random_list_of_complex_objects
  large_blob = random_large_blob
  json_echo.stub_responses(:echo_operation,
                           all_types,
                           list_of_strings,
                           complex_object,
                           list_of_complex,
                           large_blob)
  cbor_echo.stub_responses(:echo_operation,
                           all_types,
                           list_of_strings,
                           complex_object,
                           list_of_complex,
                           large_blob)

  json_echo.echo_operation(all_types)
  json_echo.echo_operation(list_of_strings)
  json_echo.echo_operation(complex_object)
  json_echo.echo_operation(list_of_complex)
  json_echo.echo_operation(large_blob)

  cbor_echo.echo_operation(all_types)
  cbor_echo.echo_operation(list_of_strings)
  cbor_echo.echo_operation(complex_object)
  cbor_echo.echo_operation(list_of_complex)
  cbor_echo.echo_operation(large_blob)
end

test_cases = ['All types', 'Long list of strings', 'Complex object', 'List of complex objects', 'Very large blob']
measurements = ['Serialization time (ms)', 'Deserialization time (ms)', 'Request payload size (bytes)',
                'Response payload size (bytes)']

separate_and_analyze(test_cases, measurements, thread, data, raw)

data.close
raw.close

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
ASCII = "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".chars
INT_MIN = -2147483648
INT_MAX = 2147483647
LONG_MIN = -9223372036854775808
LONG_MAX = 9223372036854775807
FLOAT_MIN = -2147483648.0
FLOAT_MAX = 2147483647.0
DOUBLE_MIN = -9223372036854775808.0
DOUBLE_MAX = 9223372036854775807.0
RUN_START_TIMESTAMP = Time.now

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
    timestamp_member: RUN_START_TIMESTAMP,
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
              map_of_string_to_string_member: random_map_of_string_to_string,
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
        timestamp_member: RUN_START_TIMESTAMP,
        list_of_strings_member: (0...8).map { (0...32).map { ASCII[rand(ASCII.length)] }.join }
      }
    end
  }
end

def random_large_blob
  {
    blob_member: Random.bytes(262144)
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
    "service": 'Local only',
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
  puts 'Request Size Data Raw (Alternating Json and CBOR)'
  pp thread[:request_size_data]
  puts 'Response Size Data Raw (Alternating Json and CBOR)'
  pp thread[:response_size_data]
  $stdout = STDOUT
end

def analyze(test_case, metrics, thread, data, raw)
  raw.puts(test_case)
  output_raw(thread, raw)

  separated_request_size = separate_byte_data(thread[:request_size_data])
  # pp separated_request_size
  separated_response_size = separate_byte_data(thread[:response_size_data])
  # pp separated_response_size

  separated_query_serde = separate_serde_data(thread[:query_serde_data])
  write_test_output(test_case, 'JSON', metrics, 'Serialization time (ms)', separated_query_serde[0], data)
  write_test_output(test_case, 'JSON', metrics, 'Deserialization time (ms)', separated_query_serde[1], data)
  write_test_output(test_case, 'JSON', metrics, 'Request payload size (bytes)', separated_request_size[0], data)
  write_test_output(test_case, 'JSON', metrics, 'Response payload size (bytes)', separated_response_size[0], data)

  separated_cbor_serde = separate_serde_data(thread[:cbor_serde_data])
  write_test_output(test_case, 'CBOR', metrics, 'Serialization time (ms)', separated_cbor_serde[0], data)
  write_test_output(test_case, 'CBOR', metrics, 'Deserialization time (ms)', separated_cbor_serde[1], data)
  write_test_output(test_case, 'CBOR', metrics, 'Request payload size (bytes)', separated_request_size[1], data)
  write_test_output(test_case, 'CBOR', metrics, 'Response payload size (bytes)', separated_response_size[1], data)

  clear_thread_data(thread)
end

def big_analyze(test_cases, thread)
  json_full_serde_data = Array.new(5) { [] }
  json_full_request_data = Array.new(5) { [] }
  json_full_response_data = Array.new(5) { [] }
  thread[:json_serde_data].each_with_index do |data, i|
    json_full_serde_data[i % 5] << data
  end
  thread[:request_size_data].each_with_index do |data, i|
    json_full_request_data[i % 5] << data unless i % 10 > 4
  end
  thread[:response_size_data].each_with_index do |data, i|
    json_full_response_data[i % 5] << data unless i % 10 > 4
  end
  json_full_test_cases = Array.new(5) {}
  (0...5).each do |i|
    separated = separate_serde_data(json_full_serde_data[i])
    json_all_types_data[test_cases[0]] = separated[0]
    json_all_types_data[test_cases[1]] = separated[1]
    json_all_types_data[test_cases[2]] = json_full_request_data

  end


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

output_raw(thread, raw)

test_cases = ['All types', 'Long list of strings', 'Complex object', 'List of complex objects', 'Very large blob']

parsed_json_data = Array.new(10) { [] }
parsed_cbor_data = Array.new(10) { [] }

thread[:json_serde_data].each_with_index do |i, idx|
  ser = i[0]
  deser = i[1]
  parsed_json_data[(idx % 5) * 2] << ser
  parsed_json_data[(idx % 5) * 2 + 1] << deser
end

thread[:cbor_serde_data].each_with_index do |i, idx|
  ser = i[0]
  deser = i[1]
  parsed_cbor_data[(idx % 5) * 2] << ser
  parsed_cbor_data[(idx % 5) * 2 + 1] << deser
end

parsed_json_data.each_with_index do |i, idx|
  write_test_output(test_cases[(idx / 2) % 5], 'JSON', 0, 
                    idx.even? ? 'Serialization time (ms)' : 'Deserialization time (ms)', i, data)
end

parsed_cbor_data.each_with_index do |i, idx|
  write_test_output(test_cases[(idx / 2) % 5], 'CBOR', 0,
                    idx.even? ? 'Serialization time (ms)' : 'Deserialization time (ms)', i, data)
end

data.close
raw.close
